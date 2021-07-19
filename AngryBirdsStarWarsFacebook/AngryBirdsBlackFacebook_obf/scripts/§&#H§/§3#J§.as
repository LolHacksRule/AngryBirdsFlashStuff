package §&#H§
{
   import §!!U§.DisplayObject;
   import §!!U§.Stage;
   import §&v§.Texture;
   import §<!>§.§<#R§;
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
   import starling.events.§5X§;
   import starling.events.§7#-§;
   import starling.events.§8"e§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §3#J§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!H§:Rectangle;
      
      private static var §3"p§:Boolean = true;
      
      private static var §&[§:Boolean;
      
      private static var §?!t§:§3#J§;
      
      private static var §;"1§:Boolean;
      
      private static var §-"'§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "1.0";
         }
         do
         {
            §3"p§ = true;
         }
         while(!_loc2_);
         
      }
      
      private var mStage3D:Stage3D;
      
      private var § "u§:§!!U§.Stage;
      
      private var §8`§:Class;
      
      private var §2!§:§!!U§.DisplayObject;
      
      private var §&! §:§<#R§;
      
      private var §^!+§:Boolean;
      
      private var §&%§:Boolean;
      
      private var §'#,§:§%"H§;
      
      private var §0!Z§:§8"e§;
      
      private var §@Q§:int;
      
      private var §=!r§:Boolean;
      
      private var §]!A§:Boolean;
      
      private var §6"0§:Number;
      
      private var §1!q§:Boolean;
      
      private var §'X§:flash.display.Stage;
      
      private var §3"T§:Sprite;
      
      private var §>!Y§:Context3D;
      
      private var §`#`§:Dictionary;
      
      private var §3"b§:int;
      
      private var §##I§:Boolean;
      
      private var § "W§:Number;
      
      private var §8!y§:Number;
      
      private var §0"1§:Number;
      
      private var §8#3§:Number;
      
      private var §2"t§:Number;
      
      private var §]j§:Number;
      
      private var §6!T§:Function;
      
      private var §]H§:uint;
      
      private var §4"H§:String;
      
      private var §7#+§:Bitmap;
      
      private var §>A§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`#X§:Boolean = false;
      
      private var §?"S§:Boolean = false;
      
      public function §3#J§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param2)
         {
            super();
            if(!_loc10_)
            {
               if(param2 == null)
               {
                  if(_loc9_ || param1)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop19:
                  while(true)
                  {
                     this.§@Q§ = 0;
                     loop6:
                     while(true)
                     {
                        this.§=!r§ = false;
                        loop7:
                        while(_loc9_)
                        {
                           this.§]!A§ = false;
                           loop8:
                           while(!_loc10_)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§6"0§ = getTimer() / 1000;
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          addr155:
                                          if(!(_loc10_ && param2))
                                          {
                                             this.§`#`§ = new Dictionary();
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             addr129:
                                             if(_loc9_ || param1)
                                             {
                                                addr259:
                                                if(!_loc10_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop9;
                                                         }
                                                         var _loc7_:int = 0;
                                                         var _loc8_:* = this.§-";§;
                                                         addr330:
                                                         for each(_loc6_ in _loc8_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               param2.addEventListener(_loc6_,this.§2#5§,false,0,true);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[#O§,false,0,true);
                                                            param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[#O§,false,0,true);
                                                            addr456:
                                                         }
                                                         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!b§,false,1,true);
                                                         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!g§,false,1,true);
                                                         this.mStage3D.visible = false;
                                                         this.§5J§(true);
                                                         addr413:
                                                         addr401:
                                                         addr425:
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            if(_loc9_ || param2)
                                                            {
                                                               this.§]H§ = param2.color;
                                                               addr374:
                                                               if(!_loc10_)
                                                               {
                                                                  this.§4"H§ = param5;
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!(_loc10_ && param3))
                                                                        {
                                                                           if(!(_loc9_ || param1))
                                                                           {
                                                                              §§goto(addr413);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                            §§goto(addr456);
                                                         }
                                                         addr436:
                                                         §§goto(addr436);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§8#3§ = this.§8!y§;
                                                            loop18:
                                                            while(true)
                                                            {
                                                               this.§2"t§ = param2.stageWidth;
                                                               addr289:
                                                               while(true)
                                                               {
                                                                  this.§]j§ = param2.stageHeight;
                                                                  addr283:
                                                                  addr275:
                                                                  §0§ = true;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        this.§ "k§();
                                                                        break loop9;
                                                                     }
                                                                     continue loop18;
                                                                     §§goto(addr283);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr301:
                                                      }
                                                   }
                                                   break loop9;
                                                }
                                                while(_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§ "u§ = new §!!U§.Stage(param3.width,param3.height,param2.color);
                                                      break loop10;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      addr252:
                                                      if(!(_loc10_ && this))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   addr264:
                                                   while(_loc10_)
                                                   {
                                                      §§goto(addr289);
                                                   }
                                                   §%!H§ = param3;
                                                }
                                                while(true)
                                                {
                                                   this.mStage3D = param4;
                                                   §§goto(addr238);
                                                   §§goto(addr252);
                                                }
                                                addr238:
                                                addr259:
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop19;
                                                }
                                                addr306:
                                                while(true)
                                                {
                                                   this.§0"1§ = this.§ "W§;
                                                   break loop5;
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr301);
                                          }
                                          break;
                                       }
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                                 while(true)
                                 {
                                    this.§'X§ = param2;
                                    addr204:
                                    while(_loc9_ || param1)
                                    {
                                       this.§0!Z§ = new §8"e§(this.§ "u§);
                                       break loop7;
                                    }
                                    §§goto(addr283);
                                    §§goto(addr155);
                                 }
                              }
                              this.§8`§ = param1;
                              §§goto(addr264);
                           }
                           continue loop6;
                        }
                        while(_loc9_)
                        {
                           while(true)
                           {
                              this.§&! § = new §<#R§();
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr204);
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  this.§8!y§ = param3.height;
                  §§goto(addr306);
                  addr121:
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
                           if(!(_loc10_ && param1))
                           {
                              param4 = param2.stage3Ds[0];
                           }
                           §§goto(addr259);
                        }
                        this.§ "W§ = param3.width;
                        if(!(_loc10_ && param3))
                        {
                           §§goto(addr121);
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr94);
               }
               §§goto(addr240);
               addr73:
            }
            §§goto(addr259);
         }
         §§goto(addr73);
      }
      
      public static function get §3!s§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§2!C§);
            if(_loc2_ || §3#J§)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr46:
                     §§push(§2!C§.§##I§);
                     if(!(_loc1_ && §3#J§))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr65);
            }
         }
         §§goto(addr46);
      }
      
      public static function §;[§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§?!t§);
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
                              §§push(§?!t§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§>A§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       loop7:
                                       for(; _loc2_ || §3#J§; §§push(§§pop()),if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       },if(§§pop())
                                       {
                                          §§goto(addr80);
                                       },§§goto(addr48))
                                       {
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§?!t§);
                                                   loop10:
                                                   for(; _loc2_; while(true)
                                                   {
                                                      §§push(§?!t§);
                                                      if(!_loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop10;
                                                   })
                                                   {
                                                      §§push(§§pop().§>!Y§ == null);
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr80:
                                                         addr80:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr39:
                                                         continue loop6;
                                                         if(_loc2_ || §3#J§)
                                                         {
                                                            addr48:
                                                            return !§§pop();
                                                            addr47:
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr129:
                                          }
                                          else
                                          {
                                             §§goto(addr47);
                                          }
                                          §§goto(addr48);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr129);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr48);
                  }
               }
               if(_loc1_ && §3#J§)
               {
                  continue;
               }
               §§push(§§pop().§>!Y§.driverInfo == "Disposed");
               if(!_loc1_)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr80);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr96);
      }
      
      private static function §4"w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §&[§ = true;
         }
      }
      
      public static function get §=#_§() : Rectangle
      {
         return §%!H§.clone();
      }
      
      public static function set §=#_§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §%!H§ = param1.clone();
         }
         do
         {
            §4"w§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public static function set §+!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §3"p§ = param1;
         }
      }
      
      public static function get §+!m§() : Boolean
      {
         return §3"p§;
      }
      
      public static function get §2!C§() : §3#J§
      {
         return §?!t§;
      }
      
      public static function get §^#A§() : §<#R§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§?!t§);
            if(!_loc1_)
            {
               return !!§§pop() ? §?!t§.§^#A§ : null;
            }
         }
         §§goto(addr44);
      }
      
      public static function get §%!W§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §%!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §0§() : Boolean
      {
         return §;"1§;
      }
      
      public static function set §0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§?!t§ == null)
            {
               do
               {
                  §;"1§ = param1;
               }
               while(_loc3_ && _loc3_);
               
               if(!(_loc3_ && _loc2_))
               {
                  return;
                  addr66:
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr66);
      }
      
      public static function §%!"§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(§2!C§)
            {
               if(!_loc6_)
               {
                  return Texture.§-#X§(§2!C§.§>!Y§,param1,param2,param3);
                  addr37:
               }
            }
            return null;
         }
         §§goto(addr37);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            §§push(§?!t§);
            if(_loc3_ || param1)
            {
               if(§§pop().§>!Y§)
               {
                  if(!_loc4_)
                  {
                     addr33:
                     §§push(§?!t§);
                     if(!_loc4_)
                     {
                        §§pop().§>!Y§.drawToBitmapData(param1);
                        if(_loc4_)
                        {
                           addr62:
                           _loc2_ = §?!t§.§'#,§.canvas;
                           addr61:
                           if(!(_loc4_ && _loc3_))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr61);
               }
               else
               {
                  §§push(§?!t§);
                  if(_loc3_)
                  {
                     §§push(§§pop().§'#,§);
                     if(!_loc4_)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr61);
                        }
                        addr94:
                        return;
                     }
                     §§goto(addr62);
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr33);
      }
      
      public function get §8"B§() : §!!U§.DisplayObject
      {
         return this.§2!§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]H§ = param1;
         }
      }
      
      public function get § !s§() : Number
      {
         return this.§ "W§;
      }
      
      public function get §2!G§() : Number
      {
         return this.§8!y§;
      }
      
      public function §^"_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
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
                        addr78:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           addr80:
                           while(_loc4_)
                           {
                              do
                              {
                                 §§push(§§newactivation());
                                 continue loop4;
                              }
                              while(false);
                              
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    §§pop().§§slot[1] = "flash.display3D.Context3DProfile";
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr218:
                                       var requestContext3D:Function = this.mStage3D.requestContext3D;
                                       addr223:
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          addr215:
                                          §§pop().§§slot[3] = requestContext3D.length > 1;
                                          addr216:
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc1_)
                                          {
                                             if(§§pop().§§slot[3])
                                             {
                                                addr180:
                                                §§push(§§newactivation());
                                                §§push(this.§?"S§);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr194:
                                                      §§pop().§§slot[4] = "baselineConstrained";
                                                      addr196:
                                                      addr191:
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr145:
                                                            §§push(§§newactivation());
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr160:
                                                                  §§pop().§§slot[2](this.§4"H§,profile);
                                                                  addr164:
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr180);
                                                                     }
                                                                     return;
                                                                     addr224:
                                                                  }
                                                                  §§goto(addr196);
                                                                  addr158:
                                                                  addr157:
                                                                  addr156:
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr191);
                                                            addr205:
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr194);
                                                   §§push("baseline");
                                                }
                                                §§goto(addr215);
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(§§pop().§§slot[2]);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(global);
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§4"H§);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§pop()(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr145);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr145);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr156);
                              }
                              catch(e:Error)
                              {
                                 § #@§("Context3D error: " + e.message);
                                 throw e;
                              }
                              §§goto(addr224);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc6_ && _loc2_))
         {
            this.§`#X§ = true;
            while(true)
            {
               this.§'X§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[#O§,false);
               loop1:
               while(_loc5_ || _loc1_)
               {
                  this.§'X§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[#O§,false);
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!b§,false);
                        loop4:
                        while(!_loc6_)
                        {
                           while(true)
                           {
                              this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!g§,false);
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           var _loc3_:int = 0;
                           var _loc4_:* = this.§-";§;
                           loop6:
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                    if(!_loc6_)
                                    {
                                       this.§'X§.removeEventListener(_loc1_,this.§2#5§,false);
                                    }
                                    continue;
                                 }
                                 if(!(_loc6_ && _loc1_))
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc3_ = 0;
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr136:
                                             _loc4_ = this.§`#`§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop6;
                                             }
                                             addr166:
                                          }
                                          if(_loc5_)
                                          {
                                             if(this.§>!Y§)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   this.§>!Y§.dispose();
                                                   addr318:
                                                   addr291:
                                                   while(true)
                                                   {
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc1_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(this.§0!Z§);
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         loop24:
                                                         while(true)
                                                         {
                                                            addr273:
                                                            while(true)
                                                            {
                                                               §§push(this.§'#,§);
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr279:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'#,§);
                                                                        addr281:
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           addr282:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                              addr284:
                                                                           }
                                                                        }
                                                                     }
                                                                     addr279:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§?!t§ == this)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §?!t§ = null;
                                                                           loop14:
                                                                           for(; !(_loc6_ && _loc3_); while(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(_loc6_ && _loc1_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr248);
                                                                              §§goto(addr233);
                                                                           })
                                                                           {
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(this.§7#+§));
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ || _loc1_)
                                                                                                {
                                                                                                   this.§7#+§.bitmapData.dispose();
                                                                                                   do
                                                                                                   {
                                                                                                      this.§7#+§.bitmapData = null;
                                                                                                   }
                                                                                                   while(_loc6_ && _loc1_);
                                                                                                   
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(Boolean(this.§7#+§.bitmapData));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr233:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop14;
                                                                                             }
                                                                                             addr233:
                                                                                          }
                                                                                          addr173:
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 addr220:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr279);
                                                                              }
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     §§goto(addr220);
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               §§goto(addr281);
                                                               continue loop24;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr318);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.§0!Z§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr310);
                                                §§goto(addr318);
                                             }
                                          }
                                       }
                                       §§goto(addr279);
                                    }
                                 }
                                 §§goto(addr136);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                 if(_loc5_ || this)
                                 {
                                    _loc2_.dispose();
                                 }
                                 continue;
                              }
                              §§goto(addr136);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §0!I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!Y§ = this.mStage3D.context3D;
            while(true)
            {
               this.§`#`§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§>!Y§)
                  {
                     this.§##I§ = true;
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              loop6:
                              while(true)
                              {
                                 addr24:
                                 while(true)
                                 {
                                    §4"w§();
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                              addr32:
                           }
                           else
                           {
                              addr85:
                              while(true)
                              {
                                 this.§>!Y§.enableErrorChecking = this.§]!A§;
                              }
                              addr85:
                           }
                           while(this.§>!Y§.driverInfo.indexOf("Software") >= 0)
                           {
                              if(_loc2_)
                              {
                                 this.§##I§ = true;
                              }
                              continue loop5;
                              §§goto(addr85);
                           }
                           §§goto(addr32);
                        }
                     }
                     continue;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §;!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ "u§);
            loop0:
            while(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§2!§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.§2!§ = new this.§8`§();
                              }
                           }
                           while(true)
                           {
                           }
                           addr105:
                        }
                        while(true)
                        {
                           §§push(this.§2!§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc2_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       throw new Error("Invalid root class: " + this.§8`§);
                                    }
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr76:
                              }
                              while(true)
                              {
                                 §§push(this.§ "u§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().addChild(this.§2!§);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 §§goto(addr105);
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     continue loop1;
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
            this.§>!Y§.configureBackBuffer(§%!H§.width,§%!H§.height,this.§@Q§,false);
            if(_loc2_)
            {
               §&[§ = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(§;[§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§&[§);
                     loop2:
                     while(_loc4_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(!this.§>!Y§)
                              {
                                 if(this.§7#+§)
                                 {
                                    while(_loc4_)
                                    {
                                       continue loop3;
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(false)
                                                   {
                                                      addr61:
                                                      break loop3;
                                                   }
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   §§push(§&[§);
                                                   if(_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr97);
                                                   }
                                                   addr82:
                                                   while(true)
                                                   {
                                                      this.setCanvasSize(§%!H§.width,§%!H§.height);
                                                      addr89:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr130);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr102:
                                                §§goto(addr61);
                                             }
                                             addr97:
                                             return;
                                          }
                                          §§goto(addr82);
                                       }
                                       §§goto(addr89);
                                    }
                                 }
                                 break;
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mStage3D.x = §%!H§.x;
                              }
                              while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop1;
                                 }
                                 this.mStage3D.y = §%!H§.y;
                              }
                              addr130:
                              while(true)
                              {
                                 this.configureBackBuffer();
                                 §§goto(addr102);
                                 §§goto(addr137);
                              }
                              continue loop2;
                           }
                        }
                        §§push(getTimer() / 1000);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc1_:* = §§pop();
                        §§push(_loc1_);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() - this.§6"0§);
                           if(_loc4_ || _loc1_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§6"0§ = _loc1_;
                           addr374:
                           this.§ "u§.advanceTime(_loc2_);
                           this.§&! §.advanceTime(_loc2_);
                           this.§0!Z§.advanceTime(_loc2_);
                           addr341:
                           this.§'#,§.§5#G§(this.§ "u§.stageWidth,this.§ "u§.stageHeight);
                           addr331:
                           this.§'#,§.clear(this.§>!Y§,this.§]H§,1);
                           addr376:
                           addr337:
                           addr360:
                           addr380:
                           addr348:
                           addr354:
                           §§push(this.§'#,§);
                           if(!_loc3_)
                           {
                              §§pop().§>"0§(this.§>!Y§,this.§3"b§);
                              addr327:
                              §§push(this.§ "u§);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§pop().render(this.§'#,§,1);
                                 addr309:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr284:
                                    §§push(this.§'#,§);
                                    if(_loc4_)
                                    {
                                       §§pop().§+#X§();
                                       addr287:
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(this.§6!T§ != null)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§6!T§();
                                                         addr278:
                                                         if(_loc4_)
                                                         {
                                                            this.§6!T§ = null;
                                                            addr245:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr235:
                                                               this.§'#,§.finishRendering(this.§>!Y§);
                                                               addr238:
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§'#,§);
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop().nextFrame();
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr278);
                                                               addr232:
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr232);
                                          addr294:
                                       }
                                       §§goto(addr327);
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr354);
                              }
                              §§goto(addr374);
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr294);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      public function set §0#[§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6!T§ = param1;
         }
      }
      
      private function §&u§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_ || _loc3_)
         {
            this.§3"T§.x = §%!H§.x;
            if(!_loc4_)
            {
               addr34:
               this.§3"T§.y = §%!H§.y;
            }
            var _loc1_:int = this.§3"T§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§3"T§.parent;
            if(_loc5_ || _loc3_)
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
                                    addr246:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                    }
                                 }
                                 addr245:
                              }
                              while(true)
                              {
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
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop9:
                                          while(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             loop10:
                                             for(; _loc5_; §§push(§§pop()),if(!(_loc5_ || _loc2_))
                                             {
                                                continue;
                                             },if(§§pop())
                                             {
                                                §§goto(addr171);
                                             },§§goto(addr87))
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc2_));
                                                         loop13:
                                                         while(_loc5_)
                                                         {
                                                            addr71:
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            addr80:
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc4_ && _loc1_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§push(this.§'#,§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr106:
                                                                                 §§pop().setCanvasSize(this.§0"1§,this.§8#3§,§%!H§.width / this.§ "u§.stageWidth,§%!H§.height / this.§ "u§.stageHeight);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr249:
                                                                                       _loc3_ = this.§'#,§.canvas;
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(this.§7#+§.bitmapData != _loc3_)
                                                                                          {
                                                                                             addr311:
                                                                                             this.§7#+§.bitmapData = _loc3_;
                                                                                          }
                                                                                          addr282:
                                                                                          if(this.§'X§.getChildIndex(this.§3"T§) > 0)
                                                                                          {
                                                                                             addr290:
                                                                                             this.§'X§.removeChild(this.§3"T§);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       this.§'X§.addChildAt(this.§3"T§,0);
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr282);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                       addr295:
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.§'X§.removeChild(this.§3"T§);
                                                                                          while(_loc5_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                          addr201:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§'X§.addChild(this.§3"T§);
                                                                                             addr238:
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                addr179:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc1_))
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§push(this.§'#,§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop().canvas));
                                                                                                      if(!(_loc5_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§goto(addr71);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr106);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                          addr233:
                                                                                       }
                                                                                       §§goto(addr106);
                                                                                    }
                                                                                    addr194:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'#,§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(_loc5_ || _loc1_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr132:
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr179);
                                                                        }
                                                                     }
                                                                     §§goto(addr106);
                                                                  }
                                                                  break;
                                                                  §§goto(addr80);
                                                               }
                                                               return;
                                                               addr87:
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue;
                                       }
                                       continue loop1;
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
            §§goto(addr233);
         }
         §§goto(addr34);
      }
      
      private function § #@§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               addr167:
               while(!_loc4_)
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§ "u§.stageWidth * 0.75;
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            _loc2_.autoSize = TextFieldAutoSize.CENTER;
            loop4:
            while(true)
            {
               _loc2_.text = param1;
               while(true)
               {
                  _loc2_.x = (this.§ "u§.stageWidth - _loc2_.width) / 2;
                  loop6:
                  while(true)
                  {
                     _loc2_.y = (this.§ "u§.stageHeight - _loc2_.height) / 2;
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 _loc2_.background = true;
                                 continue loop6;
                              }
                              §§goto(addr167);
                           }
                           break;
                        }
                        continue loop4;
                        addr61:
                        while(!(_loc4_ && _loc2_))
                        {
                           this.§3"X§.addChild(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop6;
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  _loc2_.backgroundColor = 4456448;
                  §§goto(addr61);
               }
            }
         }
      }
      
      public function § "k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!t§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!+§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!+§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §5J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&%§ = param1;
         }
      }
      
      private function §-"t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>A§ = true;
            for(; this.§7#+§ == null; do
            {
               this.§3"X§.addChild(this.§7#+§);
            }
            while(!_loc1_);
            ,if(!(_loc2_ && this))
            {
               break;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§7#+§ = new Bitmap();
            §§goto(addr70);
         }
      }
      
      private function §8!g§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-"t§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §%!b§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§`#X§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
                  loop29:
                  while(true)
                  {
                     this.§0!I§();
                     loop30:
                     while(true)
                     {
                        this.§;!$§();
                        loop31:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(Boolean(this.§>!Y§));
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(this.§##I§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr365:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr370:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop31;
                                                                              }
                                                                              if(!(_loc5_ || _loc2_))
                                                                              {
                                                                                 continue loop30;
                                                                              }
                                                                              this.mStage3DEnabled = false;
                                                                              while(true)
                                                                              {
                                                                                 this.§>!Y§ = null;
                                                                                 addr351:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§-"t§();
                                                                                    addr346:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop31;
                                                                           addr371:
                                                                        }
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!this.§>!Y§)
                                                                           {
                                                                              this.§'#,§ = new §2a§();
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(this.§'#,§);
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().setCanvasSize(this.§0"1§,this.§8#3§,§%!H§.width / this.§ "u§.stageWidth,§%!H§.height / this.§ "u§.stageHeight);
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§'#,§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§pop().clear(null,this.§]H§);
                                                                                                   addr449:
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§0!Z§.§`#"§ = this.§=!r§;
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr428:
                                                                                                                        addr450:
                                                                                                                        §§push(Boolean(this.§>!Y§));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr429:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 break loop7;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr474:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§'#,§);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr467:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§'#,§);
                                                                                                                                          break loop9;
                                                                                                                                       }
                                                                                                                                       addr467:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§3#J§.§0§);
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr446:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             break loop17;
                                                                                                                                          }
                                                                                                                                          addr446:
                                                                                                                                       }
                                                                                                                                       break loop17;
                                                                                                                                    }
                                                                                                                                    addr436:
                                                                                                                                 }
                                                                                                                                 break loop9;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           this.§ #@§("Fatal error: The application lost the device context!");
                                                                                                                           addr435:
                                                                                                                           this.stop();
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr467);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr423);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr383);
                                                                                                      }
                                                                                                      §§goto(addr351);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr450);
                                                                                                   }
                                                                                                   addr449:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().dispose();
                                                                                             break loop31;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc4_ && _loc2_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             this.§'#,§ = new §%"H§();
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr383);
                                                                                    }
                                                                                    addr320:
                                                                                 }
                                                                                 §§goto(addr435);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§ "k§();
                                                                                 continue loop29;
                                                                              }
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr369:
                                                               }
                                                               §§goto(addr449);
                                                            }
                                                         }
                                                         addr364:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr365);
                                                }
                                                addr447:
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr448:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr449);
                                                      }
                                                      §§goto(addr428);
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                             addr401:
                                          }
                                          §§goto(addr369);
                                       }
                                       addr400:
                                    }
                                    §§goto(addr448);
                                 }
                                 §§goto(addr429);
                              }
                              §§goto(addr401);
                           }
                        }
                        addr470:
                        while(true)
                        {
                           §§goto(addr436);
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§?"S§);
                  loop0:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(Boolean(this.mStage3D.context3D));
                                       if(!(_loc4_ && param1))
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr449);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr447);
                                                }
                                                else
                                                {
                                                   addr65:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         this.§?"S§ = true;
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            this.§^"_§();
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               return;
                                                            }
                                                            §§goto(addr470);
                                                         }
                                                         break loop1;
                                                      }
                                                      addr423:
                                                      return;
                                                   }
                                                   var _loc2_:*;
                                                   §§push((_loc2_ = §§findproperty(§-"'§)).§-"'§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(_loc5_ || this)
                                                   {
                                                      _loc2_.§-"'§ = _loc3_;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      this.§3"b§ = §-"'§;
                                                      §§goto(addr474);
                                                   }
                                                }
                                                §§goto(addr342);
                                             }
                                             break;
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr370);
                                    }
                                    break;
                                 }
                                 §§goto(addr467);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr448);
                        }
                        §§goto(addr446);
                     }
                     break;
                  }
                  §§goto(addr364);
               }
               §§goto(addr446);
            }
            §§goto(addr429);
         }
         §§goto(addr383);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§ "k§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(§§pop() - this.§6"0§);
            if(_loc4_ || _loc3_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(this.§^!+§);
               if(!(_loc5_ && this))
               {
                  §§push(Boolean(§§pop()));
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.render();
                                 addr107:
                                 while(true)
                                 {
                                 }
                              }
                              addr105:
                           }
                           while(this.§3"T§)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          this.§&u§();
                                          addr89:
                                          break;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc3_ > 1);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop5;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr89);
                           }
                           return;
                        }
                        continue;
                        addr103:
                     }
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr89);
         }
         §§goto(addr41);
      }
      
      private function §[#O§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ "k§();
         }
         do
         {
            this.§ "u§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc2_);
         
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§ "W§);
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§8!y§);
            if(!_loc5_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               if(§+!m§)
               {
                  §§push(this.§ "u§);
                  loop0:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§push(this.§ "W§);
                        loop1:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §§pop().stageWidth = §§pop();
                              loop2:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(this.§ "u§);
                                    while(true)
                                    {
                                       §§push(this.§8!y§);
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr154:
                                                         §§pop().stageHeight = §§pop() / _loc3_;
                                                         addr153:
                                                         do
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ "u§);
                                                                  addr176:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8!y§);
                                                                     addr178:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§pop().stageHeight = §§pop();
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr186:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr209:
                                                                           while(true)
                                                                           {
                                                                              §§pop().stageWidth = §§pop();
                                                                              continue loop8;
                                                                           }
                                                                           addr209:
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§0"1§ = param1;
                                                               continue loop2;
                                                            }
                                                         }
                                                         while(!(_loc6_ || param1));
                                                         
                                                         return;
                                                         addr79:
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr208:
                                                         addr206:
                                                         while(true)
                                                         {
                                                         }
                                                         addr206:
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr207:
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                else
                                                {
                                                   §§goto(addr206);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr154);
                                       addr86:
                                       §§push(this.§ "u§);
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc6_)
                                       {
                                          §§pop().dispatchEvent(new §7#-§(flash.events.Event.RESIZE,param1,param2));
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr86);
                                             }
                                             continue loop0;
                                             addr84:
                                          }
                                          §§goto(addr72);
                                       }
                                       §§goto(addr176);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr186);
                              }
                           }
                           §§goto(addr178);
                        }
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr189);
            }
            §§goto(addr79);
         }
         §§goto(addr40);
      }
      
      public function §!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setCanvasSize(this.§ "W§,this.§8!y§);
         }
      }
      
      private function §2#5§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_)
         {
            §§push(this.§^!+§);
            if(!(_loc10_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  addr45:
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        addr49:
                        §§pop();
                        if(!(_loc10_ && this))
                        {
                           §§push(this.§&%§);
                           if(_loc9_ || _loc3_)
                           {
                              addr66:
                              §§push(!§§pop());
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || this)
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 else
                                 {
                                    addr88:
                                    if(param1 is MouseEvent)
                                    {
                                       addr89:
                                       §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                       if(_loc9_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc10_ && this))
                                          {
                                             addr153:
                                             _loc3_ = Number(_loc6_.stageY);
                                             loop31:
                                             while(true)
                                             {
                                                _loc4_ = 0;
                                                loop32:
                                                do
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      while(param1.type != MouseEvent.MOUSE_DOWN)
                                                      {
                                                         if(param1.type == MouseEvent.MOUSE_UP)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop32;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§1!q§ = false;
                                                            }
                                                            if(false)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         var _loc8_:* = param1.type;
                                                         if(!_loc10_)
                                                         {
                                                            if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr402:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr384:
                                                                  §§push(1);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§goto(addr384);
                                                               }
                                                               else
                                                               {
                                                                  addr424:
                                                                  §§push(4);
                                                                  if(!(_loc9_ || param1))
                                                                  {
                                                                     addr440:
                                                                  }
                                                               }
                                                            }
                                                            else if(TouchEvent.TOUCH_END === _loc8_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(2);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr402);
                                                                  }
                                                                  addr445:
                                                                  loop34:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§5X§.§<!A§);
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr669:
                                                                                 §§push(_loc2_);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §%!H§.left);
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
                                                                                                addr676:
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §%!H§.right);
                                                                                                      addr647:
                                                                                                      while(_loc9_ || param1)
                                                                                                      {
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                      addr485:
                                                                                                      if(!(_loc9_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() - §%!H§.y);
                                                                                                      if(!(_loc10_ && this))
                                                                                                      {
                                                                                                         addr502:
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               addr512:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc9_ || param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr573:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop20:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr539:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §%!H§.x);
                                                                                                                                 addr542:
                                                                                                                                 loop22:
                                                                                                                                 while(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(!_loc10_)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc9_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr485);
                                                                                                                                          }
                                                                                                                                          §§goto(addr502);
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() >= §%!H§.bottom);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          loop16:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   addr586:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr570:
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         break loop25;
                                                                                                                                                      }
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   addr586:
                                                                                                                                                   addr609:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         break loop25;
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr640:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      break loop34;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ && this)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr624:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            break loop16;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr657:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr668:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         break loop22;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                                return;
                                                                                                                                                addr568:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ && this)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr581);
                                                                                                                                                }
                                                                                                                                                §§goto(addr640);
                                                                                                                                             }
                                                                                                                                             addr656:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr657);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr623);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr581:
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr573:
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     addr551:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §5X§.§<!A§);
                                                                                                                        if(_loc9_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ || _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr647);
                                                                                                                           }
                                                                                                                           §§goto(addr568);
                                                                                                                        }
                                                                                                                        break loop18;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr586);
                                                                                                                  addr596:
                                                                                                               }
                                                                                                               §§goto(addr545);
                                                                                                            }
                                                                                                            §§goto(addr539);
                                                                                                         }
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr668);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr320:
                                                                              _loc5_ = §§pop();
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§goto(addr669);
                                                                              }
                                                                           }
                                                                           §§goto(addr676);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr240:
                                                                           §§push(§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              addr243:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr265:
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr300:
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr669);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr313:
                                                                                          }
                                                                                          §§goto(addr669);
                                                                                       }
                                                                                       §§goto(addr548);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr319:
                                                                                       §§goto(addr320);
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                    §§goto(addr669);
                                                                                 }
                                                                                 §§goto(addr551);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr312:
                                                                                 _loc5_ = §§pop();
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr258:
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr265);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr320);
                                                                     case 1:
                                                                        §§push(§5X§.§!!Z§);
                                                                        if(_loc9_)
                                                                        {
                                                                           addr346:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              §§goto(addr669);
                                                                           }
                                                                           §§goto(addr573);
                                                                        }
                                                                        §§goto(addr551);
                                                                     case 2:
                                                                        §§goto(addr319);
                                                                     case 3:
                                                                        addr309:
                                                                        §§push(§5X§.§"!u§);
                                                                        §§push(§5X§.§<!A§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr312);
                                                                           §§push(§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr346);
                                                                        }
                                                                        §§goto(addr573);
                                                                     case 4:
                                                                        addr299:
                                                                        §§goto(addr300);
                                                                     case 5:
                                                                        §§push(§5X§.§"!u§);
                                                                        §§push(this.§1!q§);
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§5X§.§!!Z§);
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 §§goto(addr243);
                                                                              }
                                                                              §§goto(addr596);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§5X§.§;!s§);
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr258);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr551);
                                                                        }
                                                                        §§goto(addr624);
                                                                     default:
                                                                        §§goto(addr669);
                                                                  }
                                                                  continue loop29;
                                                               }
                                                               §§goto(addr424);
                                                               §§goto(addr440);
                                                            }
                                                            else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(3);
                                                                  if(_loc10_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr424);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(MouseEvent.MOUSE_UP === _loc8_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr424);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr437:
                                                                     §§push(5);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr440);
                                                                     }
                                                                  }
                                                               }
                                                               else if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                               {
                                                                  §§goto(addr437);
                                                               }
                                                               else
                                                               {
                                                                  §§push(6);
                                                               }
                                                               §§goto(addr437);
                                                            }
                                                            §§goto(addr445);
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      this.§1!q§ = true;
                                                      continue;
                                                   }
                                                   continue loop31;
                                                }
                                                while(!_loc9_);
                                                
                                                addr138:
                                                §§goto(addr155);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr153);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                       if(_loc9_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr177:
                                             _loc3_ = Number(_loc7_.stageY);
                                             if(_loc10_)
                                             {
                                             }
                                             §§goto(addr184);
                                          }
                                          _loc4_ = _loc7_.touchPointID;
                                          §§goto(addr184);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr89);
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr74);
               }
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         addr82:
      }
      
      private function get §-";§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4#-§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!_loc6_)
         {
            if(param1 in this.§`#`§)
            {
               if(!_loc6_)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
         }
         if(this.§>!Y§ != null)
         {
            (_loc4_ = this.§>!Y§.createProgram()).upload(param2,param3);
            if(_loc5_)
            {
               this.§`#`§[param1] = _loc4_;
            }
         }
      }
      
      public function §@r§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§^!_§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_.dispose();
               }
               do
               {
                  delete this.§`#`§[param1];
               }
               while(!(_loc4_ || _loc3_));
               
               addr52:
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §^!_§(param1:String) : Program3D
      {
         return this.§`#`§[param1] as Program3D;
      }
      
      public function §,"i§(param1:String) : Boolean
      {
         return param1 in this.§`#`§;
      }
      
      public function get §%-§() : Boolean
      {
         return this.§^!+§;
      }
      
      public function get §^#A§() : §<#R§
      {
         return this.§&! §;
      }
      
      public function get §`#"§() : Boolean
      {
         return this.§=!r§;
      }
      
      public function set §`#"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=!r§ = param1;
            while(this.§>!Y§)
            {
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               addr71:
               if(_loc2_ && param1)
               {
                  continue;
               }
               this.§0!Z§.§`#"§ = param1;
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§]!A§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§]!A§ = param1;
         }
         while(this.§>!Y§)
         {
            if(!(_loc2_ && this))
            {
               this.§>!Y§.enableErrorChecking = param1;
            }
            if(_loc3_ || _loc3_)
            {
               break;
            }
         }
      }
      
      public function get §#!t§() : int
      {
         return this.§@Q§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§@Q§ = param1;
         }
         do
         {
            §4"w§();
         }
         while(!_loc3_);
         
      }
      
      public function get §3"X§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(_loc3_ || this)
         {
            if(this.§3"T§ == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§3"T§ = new Sprite();
                  addr52:
                  _loc1_ = new ContextMenu();
                  if(!_loc2_)
                  {
                     _loc1_.hideBuiltInItems();
                     loop0:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           this.§3"T§.contextMenu = _loc1_;
                           continue loop0;
                        }
                     }
                     addr91:
                  }
                  while(true)
                  {
                     this.§&u§();
                     if(_loc2_ && this)
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
                        §§goto(addr91);
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr52);
            }
            return this.§3"T§;
         }
         §§goto(addr52);
      }
      
      public function get stage() : §!!U§.Stage
      {
         return this.§ "u§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7!D§() : flash.display.Stage
      {
         return this.§'X§;
      }
      
      public function get §;#E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>A§);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
   }
}
