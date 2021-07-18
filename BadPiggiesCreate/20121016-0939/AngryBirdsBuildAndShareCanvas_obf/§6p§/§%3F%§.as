package §6p§
{
   import §+!Y§.§]!S§;
   import §7R§.Texture;
   import §default§.DisplayObject;
   import §default§.Stage;
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
   import starling.events.§6c§;
   import starling.events.§<!h§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`Q§;
   
   public class §?%§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §<!f§:§?%§;
      
      private static var §2G§:Boolean;
      
      private static var §0U§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var § "3§:§default§.Stage;
      
      private var §;"!§:Class;
      
      private var §1&§:§default§.DisplayObject;
      
      private var §1#§:§]!S§;
      
      private var §@P§:Boolean;
      
      private var §-6§:Boolean;
      
      private var §?!x§:§5!W§;
      
      private var §9`§:§`Q§;
      
      private var §2!P§:int;
      
      private var §+5§:Boolean;
      
      private var §+!r§:Boolean;
      
      private var §6!y§:Number;
      
      private var §^!S§:Rectangle;
      
      private var §!!x§:Boolean;
      
      private var §%0§:flash.display.Stage;
      
      private var §7!C§:Sprite;
      
      private var §6![§:Context3D;
      
      private var §@!Z§:Dictionary;
      
      private var §%"1§:int;
      
      private var §;!>§:Boolean;
      
      private var §+n§:Number;
      
      private var §&";§:Number;
      
      private var §9A§:Number;
      
      private var §catch§:Number;
      
      private var §!"7§:Number;
      
      private var §9c§:Number;
      
      private var §8&§:Function;
      
      private var §;!`§:uint;
      
      private var §^E§:String;
      
      private var §3",§:Bitmap;
      
      private var §=n§:Boolean = false;
      
      private var §%B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §<b§:Boolean = false;
      
      public function §?%§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!_loc10_)
         {
            super();
            if(_loc9_ || param3)
            {
               loop0:
               while(true)
               {
                  if(param2 == null)
                  {
                     if(_loc9_)
                     {
                        §§goto(addr47);
                     }
                     addr295:
                     while(true)
                     {
                        this.§!"7§ = param2.stageWidth;
                        addr287:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              this.§9c§ = param2.stageHeight;
                              break loop0;
                           }
                        }
                     }
                     addr295:
                  }
                  else
                  {
                     if(param1 == null)
                     {
                        if(_loc9_)
                        {
                           throw new ArgumentError("Root class must not be null");
                        }
                        if(false)
                        {
                           continue;
                        }
                     }
                     if(param3 == null)
                     {
                        if(!_loc10_)
                        {
                           param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                           addr79:
                           if(param4 == null)
                           {
                              if(!(_loc10_ && param3))
                              {
                                 addr89:
                                 param4 = param2.stage3Ds[0];
                                 addr95:
                                 this.§+n§ = param3.width;
                                 if(_loc9_)
                                 {
                                    this.§&";§ = param3.height;
                                    while(true)
                                    {
                                       this.§9A§ = this.§+n§;
                                       addr301:
                                       while(true)
                                       {
                                          this.§catch§ = this.§&";§;
                                          §§goto(addr295);
                                       }
                                    }
                                    addr306:
                                 }
                                 break;
                              }
                              loop16:
                              for(; false; if(!(_loc10_ && param3))
                              {
                                 continue;
                              },§§goto(addr255))
                              {
                                 loop17:
                                 while(true)
                                 {
                                    this.§6!y§ = getTimer() / 1000;
                                    loop18:
                                    while(_loc9_ || param3)
                                    {
                                       if(!_loc10_)
                                       {
                                          addr141:
                                          if(_loc9_ || this)
                                          {
                                             this.§@!Z§ = new Dictionary();
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             addr109:
                                             if(_loc9_ || param2)
                                             {
                                                continue loop16;
                                             }
                                             addr266:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   addr181:
                                                   if(_loc9_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§+5§ = false;
                                                         addr174:
                                                         while(true)
                                                         {
                                                            this.§+!r§ = false;
                                                            break loop18;
                                                         }
                                                         addr169:
                                                         continue loop17;
                                                      }
                                                      addr188:
                                                   }
                                                   break loop0;
                                                }
                                                break;
                                                §§goto(addr109);
                                             }
                                             while(_loc9_ || this)
                                             {
                                                if(_loc9_)
                                                {
                                                   this.§2"%§();
                                                   loop5:
                                                   while(_loc9_)
                                                   {
                                                      this.§;"!§ = param1;
                                                      while(true)
                                                      {
                                                         this.§^!S§ = param3;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            this.mStage3D = param4;
                                                            addr245:
                                                            while(true)
                                                            {
                                                               this.§ "3§ = new §default§.Stage(param3.width,param3.height,param2.color);
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  this.§%0§ = param2;
                                                                  while(true)
                                                                  {
                                                                     this.§9`§ = new §`Q§(this.§ "3§);
                                                                     while(true)
                                                                     {
                                                                        this.§1#§ = new §]!S§();
                                                                        addr194:
                                                                        while(_loc9_ || param3)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           this.§2!P§ = 0;
                                                                           §§goto(addr179);
                                                                        }
                                                                     }
                                                                     addr155:
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr301);
                                             }
                                             addr179:
                                             §§goto(addr295);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr174);
                                    }
                                    while(true)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§goto(addr155);
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                              }
                              for each(_loc6_ in this.§`u§)
                              {
                                 if(_loc9_)
                                 {
                                    param2.addEventListener(_loc6_,this.§9R§,false,0,true);
                                 }
                              }
                              if(_loc9_ || param2)
                              {
                                 param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;P§,false,0,true);
                                 loop22:
                                 while(true)
                                 {
                                    param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;P§,false,0,true);
                                    while(true)
                                    {
                                       this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6h§,false,1,true);
                                       addr418:
                                       while(_loc9_)
                                       {
                                       }
                                       continue loop22;
                                       loop27:
                                       while(_loc9_ || this)
                                       {
                                          this.§+H§(true);
                                          loop28:
                                          while(true)
                                          {
                                             this.§;!`§ = param2.color;
                                             loop29:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop28;
                                                }
                                                if(!_loc9_)
                                                {
                                                   break;
                                                }
                                                addr369:
                                                if(!(_loc10_ && param1))
                                                {
                                                   continue;
                                                }
                                                addr406:
                                                while(true)
                                                {
                                                   this.mStage3D.visible = false;
                                                   break loop29;
                                                   §§goto(addr369);
                                                }
                                             }
                                             continue loop27;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§"B§,false,1,true);
                                 §§goto(addr406);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr306);
               }
               while(true)
               {
                  § !O§ = true;
                  §§goto(addr266);
                  §§goto(addr181);
               }
            }
            §§goto(addr188);
         }
         addr47:
         throw new ArgumentError("Stage must not be null");
      }
      
      public static function get § !J§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§%b§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr40:
                     §§push(§%b§.§;!>§);
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
      
      public static function §]p§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§<!f§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr158:
               while(true)
               {
                  §§push(§§pop());
                  addr159:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                     }
                  }
                  §§goto(addr69);
               }
               loop5:
               while(true)
               {
                  if(_loc1_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§push(§§pop().§=n§);
                  loop6:
                  while(!(_loc1_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     loop7:
                     while(true)
                     {
                        §§push(§§pop());
                        loop8:
                        while(_loc2_)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    loop10:
                                    for(; !(_loc1_ && _loc1_); §§pop(),if(_loc1_ && _loc2_)
                                    {
                                       continue;
                                    },§§goto(addr112))
                                    {
                                       §§push(§<!f§);
                                       while(true)
                                       {
                                          §§push(§§pop().§6![§ == null);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop9;
                                                   §§goto(addr60);
                                                }
                                                continue loop5;
                                             }
                                             addr52:
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             addr60:
                                             if(_loc1_ && §?%§)
                                             {
                                                continue loop13;
                                             }
                                             if(_loc1_)
                                             {
                                                continue loop6;
                                             }
                                             addr69:
                                             return §§pop();
                                             §§push(!§§pop());
                                          }
                                          §§push(§<!f§);
                                          addr112:
                                          continue loop8;
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                    addr161:
                                 }
                                 else
                                 {
                                    §§goto(addr158);
                                 }
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr161);
      }
      
      public static function get §%b§() : §?%§
      {
         return §<!f§;
      }
      
      public static function get §",§() : §]!S§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §?%§)
         {
            §§push(§<!f§);
            if(!_loc2_)
            {
               return !!§§pop() ? §<!f§.§",§ : null;
            }
         }
         §§goto(addr48);
      }
      
      public static function get §[V§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §[V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get § !O§() : Boolean
      {
         return §2G§;
      }
      
      public static function set § !O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§<!f§ == null)
            {
               loop0:
               while(true)
               {
                  §2G§ = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr64:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc3_)
               {
                  return;
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr64);
      }
      
      public static function §1J§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(§%b§)
            {
               if(!_loc4_)
               {
                  return Texture.§@6§(§%b§.§6![§,param1,param2,param3);
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
         if(!(_loc3_ && param1))
         {
            §§push(§<!f§);
            if(!(_loc3_ && param1))
            {
               if(§§pop().§6![§)
               {
                  if(_loc4_)
                  {
                     §§push(§<!f§);
                     if(!(_loc3_ && param1))
                     {
                        §§pop().§6![§.drawToBitmapData(param1);
                        addr47:
                        if(!(_loc4_ || _loc2_))
                        {
                           addr83:
                           _loc2_ = §<!f§.§?!x§.canvas;
                           addr81:
                           if(!(_loc3_ && §?%§))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr67:
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr67);
               }
               else
               {
                  §§push(§<!f§);
                  if(!_loc3_)
                  {
                     §§push(§§pop().§?!x§);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr81);
                        }
                        addr115:
                        return;
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr47);
         }
         §§goto(addr67);
      }
      
      public function get §,x§() : §default§.DisplayObject
      {
         return this.§1&§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!`§ = param1;
         }
      }
      
      public function get § 4§() : Number
      {
         return this.§+n§;
      }
      
      public function get §5"0§() : Number
      {
         return this.§&";§;
      }
      
      public function §"!t§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§^E§);
         }
         catch(e:Error)
         {
            §5<§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc5_ || _loc1_)
         {
            this.§<b§ = true;
            loop0:
            while(true)
            {
               this.§%0§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;P§,false);
               loop1:
               while(true)
               {
                  this.§%0§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;P§,false);
                  while(true)
                  {
                     addr62:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6h§,false);
                        continue loop1;
                     }
                     addr46:
                     if(_loc5_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr62);
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§`u§;
         loop6:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc5_)
                  {
                     this.§%0§.removeEventListener(_loc1_,this.§9R§,false);
                  }
                  continue;
               }
               if(_loc5_ || _loc2_)
               {
                  if(!_loc6_)
                  {
                     if(_loc5_)
                     {
                        _loc3_ = 0;
                        if(_loc5_)
                        {
                           _loc4_ = this.§@!Z§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop6;
                           }
                           addr179:
                           if(!(_loc6_ && _loc2_))
                           {
                              if(this.§6![§)
                              {
                                 while(true)
                                 {
                                    this.§6![§.dispose();
                                    addr328:
                                    while(true)
                                    {
                                    }
                                    addr309:
                                    loop11:
                                    while(_loc5_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§?!x§);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                addr282:
                                                while(true)
                                                {
                                                   §§push(this.§?!x§);
                                                   addr284:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      addr285:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr282:
                                             }
                                             while(true)
                                             {
                                                if(§<!f§ == this)
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §<!f§ = null;
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr282);
                                                      }
                                                   }
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      loop20:
                                                      for(; !(_loc6_ && _loc1_); if(_loc6_ && _loc2_)
                                                      {
                                                         continue;
                                                      },§§goto(addr219))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         this.§3",§.bitmapData.dispose();
                                                         while(!_loc6_)
                                                         {
                                                            this.§3",§.bitmapData = null;
                                                            if(_loc5_)
                                                            {
                                                               continue loop20;
                                                            }
                                                         }
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(this.§3",§.bitmapData));
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               addr219:
                                                               if(!(_loc5_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               while(§§pop())
                                                               {
                                                                  continue loop20;
                                                               }
                                                               return;
                                                               addr226:
                                                            }
                                                            addr250:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop18;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr250);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr248);
                                                }
                                             }
                                          }
                                          §§goto(addr284);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§9`§);
                                 if(_loc5_ || _loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          addr308:
                                          this.§9`§.dispose();
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr308);
                              }
                           }
                           §§goto(addr282);
                           addr178:
                           addr176:
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr179);
               }
               §§goto(addr178);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc6_ && this))
               {
                  _loc2_.dispose();
               }
               continue;
            }
            §§goto(addr179);
         }
      }
      
      private function §'-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6![§ = this.mStage3D.context3D;
            while(true)
            {
               this.§@!Z§ = new Dictionary();
            }
            addr131:
         }
         loop1:
         while(true)
         {
            if(!this.§6![§)
            {
               this.§;!>§ = true;
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     continue loop1;
                  }
                  addr23:
                  loop3:
                  while(true)
                  {
                     this.§'#§();
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                        }
                        loop4:
                        while(!_loc2_)
                        {
                           this.§;!>§ = true;
                           while(true)
                           {
                              if(this.§6![§.driverInfo.indexOf("Software") >= 0)
                              {
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr131);
                     }
                     while(_loc2_ && _loc1_)
                     {
                        §§goto(addr109);
                     }
                  }
               }
               continue;
            }
            while(true)
            {
               this.§6![§.enableErrorChecking = this.§+!r§;
               §§goto(addr109);
            }
         }
      }
      
      private function §-,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§ "3§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§1&§);
                     loop2:
                     while(true)
                     {
                        §§push(null);
                        loop3:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 this.§1&§ = new this.§;"!§();
                              }
                              while(true)
                              {
                                 addr39:
                                 if(!(_loc1_ && this))
                                 {
                                    return;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§1&§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       throw new Error("Invalid root class: " + this.§;"!§);
                                    }
                                    addr117:
                                    while(_loc2_)
                                    {
                                       §§pop().addChild(this.§1&§);
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr39);
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§ "3§);
                                    if(!_loc2_)
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
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §'#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%B§ = true;
            while(true)
            {
               this.mStage3D.x = this.§^!S§.x;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.mStage3D.y = this.§^!S§.y;
            if(_loc2_)
            {
               if(!(_loc1_ && _loc2_))
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
         if(!_loc3_)
         {
            §§push(§]p§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               addr77:
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function set §[!Z§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8&§ = param1;
         }
      }
      
      private function §]1§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§7!C§.x = this.§^!S§.x;
            if(!(_loc4_ && _loc3_))
            {
               addr35:
               this.§7!C§.y = this.§^!S§.y;
            }
            var _loc1_:int = this.§7!C§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§7!C§.parent;
            if(_loc5_)
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
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr254:
                                 while(true)
                                 {
                                    §§pop();
                                    addr255:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                    }
                                 }
                                 addr254:
                              }
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc1_);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                       if(_loc4_ && _loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc2_));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || _loc1_))
                                                         {
                                                            §§goto(addr254);
                                                         }
                                                         addr131:
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop14:
                                                                              for(; §§pop(); §§push(Boolean(§§pop().canvas)),if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 continue;
                                                                              },continue loop6)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       §§push(this.§?!x§);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§pop().setCanvasSize(this.§9A§,this.§catch§,this.§^!S§.width / this.§ "3§.stageWidth,this.§^!S§.height / this.§ "3§.stageHeight);
                                                                                          addr109:
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   addr258:
                                                                                                   _loc3_ = this.§?!x§.canvas;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(this.§3",§.bitmapData != _loc3_)
                                                                                                      {
                                                                                                         addr315:
                                                                                                         this.§3",§.bitmapData = _loc3_;
                                                                                                      }
                                                                                                      addr282:
                                                                                                      if(this.§%0§.getChildIndex(this.§7!C§) > 0)
                                                                                                      {
                                                                                                         addr290:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            this.§%0§.removeChild(this.§7!C§);
                                                                                                            addr297:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§%0§.addChildAt(this.§7!C§,0);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                               §§goto(addr297);
                                                                                                            }
                                                                                                            §§goto(addr315);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§%0§.addChild(this.§7!C§);
                                                                                                   addr245:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr240:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§?!x§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      §§goto(addr258);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr245);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         break loop10;
                                                                                                      }
                                                                                                   }
                                                                                                   addr210:
                                                                                                }
                                                                                                addr182:
                                                                                                §§pop();
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§goto(addr131);
                                                                                             }
                                                                                             continue loop10;
                                                                                             addr128:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr128);
                                                                                          }
                                                                                          addr125:
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr205:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§%0§.removeChild(this.§7!C§);
                                                                                       }
                                                                                       addr205:
                                                                                    }
                                                                                    §§goto(addr210);
                                                                                 }
                                                                                 §§goto(addr109);
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                           return;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr125);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr254);
                     }
                  }
               }
            }
            §§goto(addr205);
         }
         §§goto(addr35);
      }
      
      private function §5<§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_ || _loc2_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(true)
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§ "3§.stageWidth * 0.75;
                     addr146:
                     while(!_loc5_)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        while(true)
                        {
                           _loc2_.text = param1;
                           addr124:
                           while(_loc4_ || param1)
                           {
                              _loc2_.x = (this.§ "3§.stageWidth - _loc2_.width) / 2;
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr71:
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  _loc2_.backgroundColor = 4456448;
                  loop9:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§&J§.addChild(_loc2_);
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop9;
                        }
                        if(!_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr124);
                        }
                        else
                        {
                           while(_loc4_)
                           {
                              §§goto(addr71);
                           }
                           §§goto(addr146);
                           addr69:
                        }
                        §§goto(addr137);
                     }
                     return;
                  }
                  while(true)
                  {
                     _loc2_.background = true;
                     §§goto(addr69);
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §2"%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!f§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@P§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(_loc1_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§@P§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(_loc1_);
            
         }
      }
      
      public function §+H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-6§ = param1;
         }
      }
      
      private function §9!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=n§ = true;
            while(this.§3",§ == null)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§3",§ = new Bitmap();
               }
               do
               {
                  this.§&J§.addChild(this.§3",§);
               }
               while(!_loc2_);
               
               if(_loc2_ || _loc2_)
               {
                  addr49:
                  break;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §"B§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§9!>§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc2_);
            
         }
      }
      
      private function §6h§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this.§<b§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
                  loop6:
                  while(true)
                  {
                     this.§9!>§();
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(!this.§6![§)
                           {
                              this.§?!x§ = new §<!7§();
                              loop9:
                              while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          this.§?!x§ = new §5!W§();
                                          while(true)
                                          {
                                             §§goto(addr102);
                                          }
                                       }
                                       break;
                                       addr236:
                                    }
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop6;
                                    }
                                    §§push(this.§?!x§);
                                    loop10:
                                    while(true)
                                    {
                                       §§pop().setCanvasSize(this.§9A§,this.§catch§,this.§^!S§.width / this.§ "3§.stageWidth,this.§^!S§.height / this.§ "3§.stageHeight);
                                       addr176:
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   continue loop10;
                                                }
                                                addr342:
                                                addr339:
                                                this.§2"%§();
                                                if(!_loc4_)
                                                {
                                                   this.§'-§();
                                                   this.§-,§();
                                                   addr332:
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§6![§));
                                                         loop18:
                                                         while(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop19:
                                                                  for(; !(_loc4_ && this); if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  },if(!(_loc4_ && param1))
                                                                  {
                                                                     §§goto(addr277);
                                                                     §§push(Boolean(§§pop()));
                                                                  },§§goto(addr357))
                                                                  {
                                                                     §§pop();
                                                                     while(_loc5_)
                                                                     {
                                                                        §§push(this.§;!>§);
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr277:
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    this.mStage3DEnabled = false;
                                                                                    break loop11;
                                                                                 }
                                                                                 §§push(Boolean(this.§6![§));
                                                                                 while(true)
                                                                                 {
                                                                                    addr357:
                                                                                    addr358:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr401:
                                                                                    while(true)
                                                                                    {
                                                                                       addr369:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§?%§.§ !O§);
                                                                                          break loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr365:
                                                                                 this.§5<§("Fatal error: The application lost the device context!");
                                                                                 this.stop();
                                                                                 break loop9;
                                                                                 addr356:
                                                                                 addr376:
                                                                                 addr288:
                                                                                 addr368:
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           addr286:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr374:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!x§);
                                                                        addr400:
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           §§goto(addr401);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr373);
                                                                  }
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            §§goto(addr374);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr376);
                                                         }
                                                      }
                                                      addr334:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§?!x§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   addr338:
                                                   addr405:
                                                }
                                                §§goto(addr358);
                                             }
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§6![§ = null;
                                                continue loop6;
                                             }
                                             §§goto(addr342);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr247);
                              }
                              return;
                           }
                           §§goto(addr236);
                        }
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§0U§)).§0U§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || param1)
                  {
                     _loc2_.§0U§ = _loc3_;
                  }
                  if(!_loc4_)
                  {
                     this.§%"1§ = §0U§;
                     §§goto(addr405);
                  }
               }
               §§goto(addr334);
            }
            §§goto(addr373);
         }
         §§goto(addr365);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§2"%§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            §§push(§§pop() - this.§6!y§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§@P§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || this)
               {
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
                              addr102:
                              while(true)
                              {
                              }
                           }
                           addr100:
                        }
                        while(this.§7!C§)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc3_ > 1);
                                       if(_loc4_ || this)
                                       {
                                          break;
                                       }
                                       addr125:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop4;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 this.§]1§();
                              }
                              §§goto(addr102);
                           }
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr100);
                        }
                        return;
                     }
                     continue;
                     addr98:
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr102);
      }
      
      private function §;P§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2"%§();
            do
            {
               this.§ "3§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / this.§+n§);
            if(!_loc7_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(!(_loc7_ && param3))
            {
               §§push(§§pop() / this.§&";§);
               if(_loc6_)
               {
                  addr39:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  if(param3)
                  {
                     §§push(this.§ "3§);
                     while(true)
                     {
                        §§push(this.§+n§);
                        loop1:
                        while(true)
                        {
                           §§pop().stageWidth = §§pop();
                           loop2:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 §§push(this.§ "3§);
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(this.§&";§);
                                       if(_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr141:
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr146:
                                                         §§push(_loc4_);
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr154:
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().stageHeight = §§pop();
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     this.§9A§ = param1;
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              this.§catch§ = param2;
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr178:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§ "3§);
                                                                                    addr180:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+n§);
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr201:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                addr202:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr203:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().stageWidth = §§pop();
                                                                                                      addr204:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§ "3§);
                                                                                                         break loop7;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr200:
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                 }
                                                                                 addr62:
                                                                                 §§pop().dispatchEvent(new §6c§(flash.events.Event.RESIZE,param1,param2));
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§&";§);
                                                                                 addr174:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().stageHeight = §§pop();
                                                                                    break loop6;
                                                                                 }
                                                                              }
                                                                              addr172:
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr180);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr204);
                           }
                        }
                     }
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr39);
         }
         §§goto(addr24);
      }
      
      public function §[!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setCanvasSize(this.§+n§,this.§&";§);
         }
      }
      
      private function §9R§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_ || _loc2_)
         {
            §§push(this.§@P§);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  addr45:
                  if(!§§pop())
                  {
                     if(!(_loc10_ && this))
                     {
                        §§pop();
                        if(_loc9_ || param1)
                        {
                           §§push(this.§-6§);
                           if(!_loc10_)
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
                                       return;
                                    }
                                 }
                                 §§push(param1 is MouseEvent);
                              }
                           }
                           §§goto(addr69);
                        }
                        addr79:
                        §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                        if(_loc9_ || this)
                        {
                           _loc2_ = §§pop();
                           if(_loc9_ || _loc3_)
                           {
                              addr148:
                              _loc3_ = _loc6_.stageY;
                              loop34:
                              while(true)
                              {
                                 _loc4_ = 0;
                                 loop35:
                                 while(true)
                                 {
                                    loop31:
                                    while(true)
                                    {
                                       if(param1.type != MouseEvent.MOUSE_DOWN)
                                       {
                                          if(param1.type == MouseEvent.MOUSE_UP)
                                          {
                                             if(_loc9_)
                                             {
                                                addr113:
                                                while(true)
                                                {
                                                   this.§!!x§ = false;
                                                }
                                                addr113:
                                             }
                                             while(true)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop31;
                                                      }
                                                      continue loop31;
                                                   }
                                                   addr128:
                                                   while(true)
                                                   {
                                                      this.§!!x§ = true;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break loop31;
                                                      }
                                                      continue loop34;
                                                   }
                                                   continue loop35;
                                                }
                                             }
                                             §§goto(addr113);
                                          }
                                          break;
                                       }
                                       §§goto(addr128);
                                    }
                                    addr179:
                                    var _loc8_:* = param1.type;
                                    if(!_loc10_)
                                    {
                                       if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(0);
                                             if(_loc10_ && this)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr437:
                                             §§push(5);
                                             if(_loc10_)
                                             {
                                             }
                                          }
                                          addr445:
                                          loop36:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(§<!h§.§?!o§);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc9_ || param1)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr679:
                                                         §§push(_loc2_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < this.§^!S§.left);
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        break loop36;
                                                                     }
                                                                     addr686:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr665:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr667:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr668:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    addr624:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < this.§^!S§.top);
                                                                                       addr628:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr686);
                                                                                          }
                                                                                       }
                                                                                       break loop36;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr667:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr650);
                                                   }
                                                   else
                                                   {
                                                      addr322:
                                                      _loc5_ = §§pop();
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§goto(addr679);
                                                      }
                                                   }
                                                   §§goto(addr473);
                                                }
                                                else
                                                {
                                                   addr259:
                                                   §§push(§§pop());
                                                   if(_loc9_ || this)
                                                   {
                                                      addr267:
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr270:
                                                         _loc5_ = §§pop();
                                                         if(_loc9_ || this)
                                                         {
                                                            if(false)
                                                            {
                                                               addr280:
                                                            }
                                                            §§goto(addr679);
                                                         }
                                                         §§goto(addr559);
                                                      }
                                                      §§goto(addr562);
                                                   }
                                                   §§goto(addr270);
                                                }
                                             case 1:
                                                addr346:
                                                _loc5_ = §<!h§.§-!V§;
                                                addr345:
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr679);
                                                }
                                                §§goto(addr668);
                                             case 2:
                                                addr312:
                                                §§push(§<!h§.§,"#§);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr322);
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr345);
                                                   }
                                                   §§goto(addr668);
                                                }
                                                §§goto(addr346);
                                             case 3:
                                                addr295:
                                                §§push(§<!h§.§?!o§);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   addr303:
                                                   _loc5_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr679);
                                                }
                                                else
                                                {
                                                   §§goto(addr322);
                                                }
                                             case 4:
                                                addr286:
                                                _loc5_ = §<!h§.§,"#§;
                                                addr285:
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr679);
                                                }
                                                break;
                                             case 5:
                                                §§push(this.§!!x§);
                                                if(!_loc10_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         §§push(§<!h§.§-!V§);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§goto(addr267);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr295);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr679);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         §§goto(addr562);
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   else
                                                   {
                                                      §§push(§<!h§.§"W§);
                                                      if(!_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr312);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr303);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr679);
                                                      }
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr665);
                                             default:
                                                §§goto(addr679);
                                          }
                                          continue loop28;
                                       }
                                       if(TouchEvent.TOUCH_MOVE === _loc8_)
                                       {
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr384:
                                             §§push(1);
                                             if(_loc9_ || this)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr437);
                                          }
                                       }
                                       else if(TouchEvent.TOUCH_END === _loc8_)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(2);
                                             if(_loc10_)
                                             {
                                                addr432:
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr437);
                                          }
                                       }
                                       else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(3);
                                             if(!(_loc9_ || this))
                                             {
                                                §§goto(addr432);
                                             }
                                          }
                                          else
                                          {
                                             addr429:
                                             §§push(4);
                                             if(_loc9_)
                                             {
                                                §§goto(addr432);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          if(MouseEvent.MOUSE_UP === _loc8_)
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§goto(addr429);
                                             }
                                             else
                                             {
                                                §§goto(addr437);
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
                                    §§goto(addr384);
                                 }
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr148);
                     }
                     if(§§pop())
                     {
                        §§goto(addr79);
                     }
                     else
                     {
                        §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                        if(!_loc10_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc10_)
                           {
                              addr167:
                              _loc3_ = _loc7_.stageY;
                              if(_loc9_ || this)
                              {
                              }
                              §§goto(addr179);
                           }
                           _loc4_ = _loc7_.touchPointID;
                           §§goto(addr179);
                        }
                        §§goto(addr167);
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr66);
            }
            §§goto(addr45);
         }
         §§goto(addr79);
      }
      
      private function get §`u§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §3A§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!(_loc6_ && param2))
         {
            if(param1 in this.§@!Z§)
            {
               if(_loc5_)
               {
                  throw new Error("Another program with this name is already registered");
                  addr33:
               }
            }
            if(this.§6![§ != null)
            {
               (_loc4_ = this.§6![§.createProgram()).upload(param2,param3);
               if(_loc5_ || param3)
               {
                  this.§@!Z§[param1] = _loc4_;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function §2o§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§!!t§(param1);
         if(!(_loc3_ && param1))
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  _loc2_.dispose();
                  addr79:
                  while(true)
                  {
                     delete this.§@!Z§[param1];
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr40);
               }
            }
            addr40:
            return;
         }
         §§goto(addr79);
      }
      
      public function §!!t§(param1:String) : Program3D
      {
         return this.§@!Z§[param1] as Program3D;
      }
      
      public function §`!z§(param1:String) : Boolean
      {
         return param1 in this.§@!Z§;
      }
      
      public function get § get§() : Boolean
      {
         return this.§@P§;
      }
      
      public function get §",§() : §]!S§
      {
         return this.§1#§;
      }
      
      public function get §6"§() : Boolean
      {
         return this.§+5§;
      }
      
      public function set §6"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+5§ = param1;
            loop0:
            while(this.§6![§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.§9`§.§6"§ = param1;
                  }
                  addr44:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+!r§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!r§ = param1;
         }
         while(this.§6![§)
         {
            if(_loc3_)
            {
               this.§6![§.enableErrorChecking = param1;
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function get §0P§() : int
      {
         return this.§2!P§;
      }
      
      public function set §0P§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!P§ = param1;
         }
         do
         {
            this.§'#§();
         }
         while(!_loc2_);
         
      }
      
      public function get §[A§() : Rectangle
      {
         return this.§^!S§.clone();
      }
      
      public function set §[A§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!S§ = param1.clone();
            do
            {
               this.§'#§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get §&J§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || this)
         {
            if(this.§7!C§ == null)
            {
               if(_loc2_)
               {
                  this.§7!C§ = new Sprite();
                  _loc1_ = new ContextMenu();
                  addr36:
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.hideBuiltInItems();
                  }
                  loop0:
                  while(true)
                  {
                     addr70:
                     while(true)
                     {
                        this.§7!C§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
               }
               §§goto(addr36);
            }
            return this.§7!C§;
         }
         §§goto(addr36);
      }
      
      public function get stage() : §default§.Stage
      {
         return this.§ "3§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!1§() : flash.display.Stage
      {
         return this.§%0§;
      }
      
      public function get §=7§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=n§);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
   }
}
