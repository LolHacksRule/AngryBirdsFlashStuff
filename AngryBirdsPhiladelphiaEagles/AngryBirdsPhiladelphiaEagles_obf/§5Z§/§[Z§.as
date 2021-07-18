package §5Z§
{
   import § N§.DisplayObject;
   import § N§.Stage;
   import §!`§.§>D§;
   import §8z§.Texture;
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
   import starling.events.§#^§;
   import starling.events.§,Q§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§else§;
   
   public class §[Z§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;@§:§[Z§;
      
      private static var §'§:Boolean;
      
      private static var §7T§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §@&§:§ N§.Stage;
      
      private var §?!4§:Class;
      
      private var §`7§:§ N§.DisplayObject;
      
      private var §`9§:§>D§;
      
      private var §1-§:Boolean;
      
      private var §!<§:Boolean;
      
      private var §>J§:§4]§;
      
      private var §4!F§:§#^§;
      
      private var §!!4§:int;
      
      private var §=4§:Boolean;
      
      private var §,4§:Boolean;
      
      private var § W§:Number;
      
      private var §09§:Rectangle;
      
      private var §9!6§:Boolean;
      
      private var §^;§:flash.display.Stage;
      
      private var §31§:Sprite;
      
      private var §9o§:Context3D;
      
      private var §,!%§:Dictionary;
      
      private var §%&§:int;
      
      private var §]`§:Boolean;
      
      private var §!Z§:Number;
      
      private var §`[§:Number;
      
      private var §74§:Number;
      
      private var §]w§:Number;
      
      private var §2!B§:Number;
      
      private var §1E§:Number;
      
      private var §9!D§:Function;
      
      private var §1!#§:uint;
      
      private var §4l§:String;
      
      private var §9&§:Bitmap;
      
      private var §@!9§:Boolean = false;
      
      private var §%N§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §%J§:Boolean = false;
      
      public function §[Z§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(_loc10_)
         {
            super();
            if(_loc10_)
            {
               if(param2 == null)
               {
                  throw new ArgumentError("Stage must not be null");
               }
               if(param1 == null)
               {
                  if(!(_loc9_ && param1))
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  addr81:
                  param4 = param2.stage3Ds[0];
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc10_)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr78:
                        if(param4 == null)
                        {
                           §§goto(addr81);
                        }
                        this.§!Z§ = param3.width;
                        if(_loc10_)
                        {
                           this.§`[§ = param3.height;
                           this.§74§ = this.§!Z§;
                           loop5:
                           while(true)
                           {
                              this.§]w§ = this.§`[§;
                              addr251:
                              while(true)
                              {
                                 this.§2!B§ = param2.stageWidth;
                                 continue loop5;
                              }
                           }
                           addr257:
                        }
                        while(true)
                        {
                           this.§1E§ = param2.stageHeight;
                           loop1:
                           while(true)
                           {
                              §1'§ = true;
                              loop2:
                              while(true)
                              {
                                 this.§?6§();
                                 loop3:
                                 while(true)
                                 {
                                    this.§?!4§ = param1;
                                    loop4:
                                    while(true)
                                    {
                                       this.§09§ = param3;
                                       addr219:
                                       loop7:
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          while(true)
                                          {
                                             this.§@&§ = new § N§.Stage(param3.width,param3.height,param2.color);
                                             loop9:
                                             while(true)
                                             {
                                                this.§^;§ = param2;
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                                addr136:
                                                while(true)
                                                {
                                                   if(_loc10_ || param2)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop9;
                                                   addr150:
                                                   this.§=4§ = false;
                                                   this.§,4§ = false;
                                                   if(_loc10_ || param2)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§ W§ = getTimer() / 1000;
                                                         if(!_loc9_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr156:
                                                         while(!_loc9_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                      addr105:
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr78);
               }
               §§goto(addr78);
            }
            §§goto(addr81);
         }
         §§goto(addr219);
      }
      
      public static function get §-D§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[Z§))
         {
            §§push(§%m§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && §[Z§))
                  {
                     addr61:
                     §§push(§%m§.§]`§);
                     if(_loc2_ || §[Z§)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr70:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr70);
            }
         }
         §§goto(addr61);
      }
      
      public static function §?4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[Z§))
         {
            §§push(§;@§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               loop1:
               while(§§pop())
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§;@§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§@!9§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(_loc1_ || _loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§;@§);
                                       while(true)
                                       {
                                          §§push(§§pop().§9o§ == null);
                                          if(_loc2_ && _loc1_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop1;
                                                }
                                                continue loop7;
                                             }
                                             §§push(§§pop().§9o§.driverInfo == "Disposed");
                                             addr42:
                                             continue loop6;
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§push(!§§pop());
                                                   break loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§push(§;@§);
                                          addr112:
                                          continue loop2;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr133);
      }
      
      public static function get §%m§() : §[Z§
      {
         return §;@§;
      }
      
      public static function get §[A§() : §>D§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[Z§))
         {
            §§push(§;@§);
            if(!_loc2_)
            {
               return !!§§pop() ? §;@§.§[A§ : null;
            }
         }
         §§goto(addr28);
      }
      
      public static function get §4n§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4n§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §1'§() : Boolean
      {
         return §'§;
      }
      
      public static function set §1'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§;@§ == null)
            {
               loop0:
               while(true)
               {
                  §'§ = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr60:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  return;
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr60);
      }
      
      public static function §3v§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§%m§)
            {
               if(!_loc5_)
               {
                  §§goto(addr22);
               }
            }
            return null;
         }
         addr22:
         return Texture.§@"§(§%m§.§9o§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_)
         {
            §§push(§;@§);
            if(!(_loc3_ && param1))
            {
               if(§§pop().§9o§)
               {
                  if(_loc4_)
                  {
                     §§push(§;@§);
                     if(_loc4_)
                     {
                        §§pop().§9o§.drawToBitmapData(param1);
                        if(!(_loc4_ || §[Z§))
                        {
                           addr83:
                           _loc2_ = §;@§.§>J§.canvas;
                           addr82:
                           if(_loc4_ || param1)
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
                     §§goto(addr82);
                  }
                  §§goto(addr57);
               }
               else
               {
                  §§push(§;@§);
                  if(_loc4_)
                  {
                     addr61:
                     §§push(§§pop().§>J§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr82);
                        }
                        addr105:
                        return;
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr61);
         }
         §§goto(addr83);
      }
      
      public function get §%W§() : § N§.DisplayObject
      {
         return this.§`7§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!#§ = param1;
         }
      }
      
      public function get § !8§() : Number
      {
         return this.§!Z§;
      }
      
      public function get §&n§() : Number
      {
         return this.§`[§;
      }
      
      public function §!3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§4l§);
         }
         catch(e:Error)
         {
            §2l§("Context3D error: " + e.message);
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
            this.§%J§ = true;
            loop0:
            while(true)
            {
               this.§^;§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?M§,false);
               while(true)
               {
                  this.§^;§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?M§,false);
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§]!$§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§9i§,false);
                        }
                        while(!_loc5_);
                        
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc3_:int = 0;
                        var _loc4_:* = this.§>w§;
                        loop6:
                        while(true)
                        {
                           §§push(§§hasnext(_loc4_,_loc3_));
                           if(!(_loc6_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                 if(!_loc6_)
                                 {
                                    this.§^;§.removeEventListener(_loc1_,this.§;!1§,false);
                                 }
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    _loc3_ = 0;
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr144:
                                       _loc4_ = this.§,!%§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          break loop6;
                                       }
                                       addr164:
                                    }
                                    if(!_loc6_)
                                    {
                                       if(this.§9o§)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             this.§9o§.dispose();
                                             addr291:
                                             while(true)
                                             {
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc6_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §;@§ = null;
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§9&§));
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(this.§9&§.bitmapData));
                                                               if(!(_loc5_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr200:
                                                               if(!§§pop())
                                                               {
                                                                  break loop14;
                                                               }
                                                               this.§9&§.bitmapData.dispose();
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr284:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>J§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr242:
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr251:
                                                                                 this.§>J§.dispose();
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4!F§);
                                                                                    addr276:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().dispose();
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 addr274:
                                                                              }
                                                                           }
                                                                           if(§;@§ == this)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        §§goto(addr251);
                                                                        §§goto(addr284);
                                                                     }
                                                                     addr236:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                            }
                                                            continue;
                                                            addr217:
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   addr171:
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§4!F§);
                                          if(_loc5_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr274);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr276);
                                          §§goto(addr291);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr144);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc3_,_loc4_);
                              if(!(_loc6_ && _loc1_))
                              {
                                 _loc2_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr144);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr47);
         }
      }
      
      private function §=2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§9o§ = this.mStage3D.context3D;
         this.§,!%§ = new Dictionary();
         while(true)
         {
            if(!this.§9o§)
            {
               this.§]`§ = true;
               break;
            }
            this.§9o§.enableErrorChecking = this.§,4§;
            if(!_loc2_)
            {
               continue;
            }
            if(this.§9o§.driverInfo.indexOf("Software") >= 0)
            {
               while(true)
               {
                  this.§]`§ = true;
                  addr75:
                  while(true)
                  {
                  }
                  addr27:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr34:
               }
            }
            while(true)
            {
               addr22:
               while(true)
               {
                  this.§!n§();
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr27);
               }
               §§goto(addr75);
            }
            §§goto(addr34);
         }
         while(true)
         {
            if(_loc2_)
            {
               §§goto(addr22);
            }
            §§goto(addr75);
         }
      }
      
      private function §[!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@&§);
         loop0:
         while(true)
         {
            if(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§`7§);
                  while(true)
                  {
                     §§push(null);
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§`7§ = new this.§?!4§();
                        }
                        §§push(this.§`7§);
                        if(_loc1_)
                        {
                           break;
                        }
                        §§push(null);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              break loop1;
                           }
                           while(true)
                           {
                              §§push(this.§@&§);
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§pop().addChild(this.§`7§);
                              if(!_loc1_)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    return;
                                 }
                                 break loop1;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    return;
                                 }
                                 addr111:
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               throw new Error("Invalid root class: " + this.§?!4§);
            }
            §§goto(addr111);
         }
      }
      
      private function §!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%N§ = true;
            while(true)
            {
               this.mStage3D.x = this.§09§.x;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.mStage3D.y = this.§09§.y;
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
         if(_loc4_)
         {
            §§push(§?4§());
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§%N§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(this.§9o§)
                           {
                              while(true)
                              {
                                 this.§9o§.configureBackBuffer(this.§09§.width,this.§09§.height,this.§!!4§,false);
                                 addr58:
                                 while(true)
                                 {
                                 }
                              }
                              addr46:
                           }
                           while(true)
                           {
                              this.§%N§ = false;
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr46);
                           }
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr58);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(getTimer() / 1000);
               if(_loc4_ || _loc1_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() - this.§ W§);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               this.§ W§ = _loc1_;
               addr262:
               this.§@&§.advanceTime(_loc2_);
               this.§`9§.advanceTime(_loc2_);
               this.§4!F§.advanceTime(_loc2_);
               addr239:
               this.§>J§.§=j§(this.§@&§.stageWidth,this.§@&§.stageHeight);
               addr219:
               this.§>J§.clear(this.§9o§,this.§1!#§,1);
               addr246:
               addr264:
               addr258:
               addr252:
               §§push(this.§>J§);
               if(!_loc3_)
               {
                  §§pop().§+j§(this.§9o§,this.§%&§);
                  addr215:
                  §§push(this.§@&§);
                  if(!_loc3_)
                  {
                     §§pop().render(this.§>J§,1);
                     addr202:
                     if(!_loc3_)
                     {
                        addr191:
                        this.§>J§.§2!0§();
                        addr192:
                        if(this.§9!D§ != null)
                        {
                           addr181:
                           this.§9!D§();
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 this.§9!D§ = null;
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr140:
                                       §§push(this.§>J§);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§pop().finishRendering(this.§9o§);
                                             addr152:
                                             if(_loc4_ || this)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§>J§);
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§pop().§16§();
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr192);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr262);
               }
               §§goto(addr219);
            }
         }
      }
      
      public function set §?! §(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9!D§ = param1;
         }
      }
      
      private function §68§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§31§.x = this.§09§.x;
            if(_loc5_)
            {
               this.§31§.y = this.§09§.y;
            }
         }
         var _loc1_:int = this.§31§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§31§.parent;
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
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr232:
                              while(true)
                              {
                                 §§push(_loc2_ == null);
                              }
                           }
                           addr231:
                        }
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr219:
                                 while(true)
                                 {
                                    this.§^;§.addChild(this.§31§);
                                 }
                                 addr219:
                              }
                              else
                              {
                                 §§push(_loc1_);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(0);
                                 if(_loc4_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() == §§pop());
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr206:
                                    while(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                continue;
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr232);
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                this.§^;§.removeChild(this.§31§);
                                                loop18:
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§>J§);
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr56:
                                                            §§push(Boolean(§§pop().canvas));
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§push(this.§>J§);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        addr94:
                                                                        §§pop().setCanvasSize(this.§74§,this.§]w§,this.§09§.width / this.§@&§.stageWidth,this.§09§.height / this.§@&§.stageHeight);
                                                                        §§goto(addr113);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr113);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop18;
                                                                  §§goto(addr56);
                                                               }
                                                               addr152:
                                                            }
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr219);
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr122);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr219);
      }
      
      private function §2l§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.align = TextFormatAlign.CENTER;
            do
            {
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.wordWrap = true;
               _loc2_.width = this.§@&§.stageWidth * 0.75;
               _loc2_.autoSize = TextFieldAutoSize.CENTER;
               _loc2_.text = param1;
            }
            while(_loc4_ && _loc2_);
            
            _loc2_.x = (this.§@&§.stageWidth - _loc2_.width) / 2;
         }
         loop1:
         while(true)
         {
            _loc2_.y = (this.§@&§.stageHeight - _loc2_.height) / 2;
            while(true)
            {
               _loc2_.background = true;
               while(_loc5_)
               {
                  if(!_loc4_)
                  {
                     _loc2_.backgroundColor = 4456448;
                     this.§"0§.addChild(_loc2_);
                     if(_loc5_ || param1)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §?6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;@§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1-§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(_loc1_ && this);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1-§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_);
         
      }
      
      public function §=!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!<§ = param1;
         }
      }
      
      private function §?7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@!9§ = true;
            while(this.§9&§ == null)
            {
               do
               {
                  this.§9&§ = new Bitmap();
                  do
                  {
                     this.§"0§.addChild(this.§9&§);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_);
               
               if(_loc2_ || _loc2_)
               {
                  addr66:
                  break;
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function §9i§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?7§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(!_loc2_);
         
      }
      
      private function §]!$§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(this.§%J§)
         {
            return;
         }
         var _loc2_:*;
         §§push((_loc2_ = §§findproperty(§7T§)).§7T§);
         if(_loc5_ || param1)
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            _loc2_.§7T§ = _loc3_;
         }
         this.§%&§ = §7T§;
         §§push(this.§>J§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  §§push(this.§>J§);
                  addr283:
                  while(true)
                  {
                     §§pop().dispose();
                  }
               }
               addr281:
            }
            while(true)
            {
               §§push(!§[Z§.§1'§);
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
                           loop7:
                           while(true)
                           {
                              §§push(Boolean(this.§9o§));
                              while(_loc5_)
                              {
                                 §§push(this.§]`§);
                                 if(_loc5_)
                                 {
                                    addr196:
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          this.mStage3DEnabled = false;
                                          addr201:
                                          while(true)
                                          {
                                             this.§9o§ = null;
                                             while(!(_loc4_ && param1))
                                             {
                                                this.§?7§();
                                                §§pop().clear(null,this.§1!#§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr65:
                                                   this.§4!F§.§"!R§ = this.§=4§;
                                                   continue loop12;
                                                }
                                             }
                                             addr237:
                                             while(true)
                                             {
                                                this.§=2§();
                                                this.§[!1§();
                                                §§push(Boolean(this.§9o§));
                                                §§push(Boolean(this.§9o§));
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr196);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!this.§9o§)
                                       {
                                          this.§>J§ = new §]M§();
                                          if(!(_loc5_ || param1))
                                          {
                                             break;
                                          }
                                          §§push(this.§>J§);
                                          continue loop0;
                                       }
                                       if(_loc5_)
                                       {
                                          this.§>J§ = new §4]§();
                                          §§goto(addr65);
                                       }
                                       §§goto(addr201);
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop6;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           this.§2l§("Fatal error: The application lost the device context!");
                           this.stop();
                           addr244:
                           if(!_loc4_)
                           {
                              return;
                           }
                           §§goto(addr281);
                        }
                        else
                        {
                           §§goto(addr234);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?6§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() - this.§ W§);
            if(_loc4_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || this)
            {
               §§push(this.§1-§);
               if(_loc4_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc5_ && _loc3_))
                  {
                     addr128:
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_ > 1);
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr110:
                                    if(!(_loc5_ && param1))
                                    {
                                       this.render();
                                    }
                                    while(true)
                                    {
                                    }
                                    addr110:
                                 }
                                 while(this.§31§)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr110);
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       this.§68§();
                                    }
                                    break;
                                 }
                                 return;
                              }
                           }
                        }
                        addr130:
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr130);
               }
               §§goto(addr128);
            }
            §§goto(addr110);
         }
         §§goto(addr41);
      }
      
      private function §?M§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?6§();
         }
         do
         {
            this.§@&§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / this.§!Z§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(_loc6_)
         {
            §§push(§§pop() / this.§`[§);
            if(!(_loc7_ && param3))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || this)
         {
            if(!param3)
            {
               §§push(this.§@&§);
               loop0:
               while(true)
               {
                  §§push(this.§!Z§);
                  if(!(_loc7_ && param3))
                  {
                     §§push(_loc4_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr199:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr200:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                           }
                        }
                        addr135:
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        §§push(§§pop() * §§pop());
                        if(!(_loc7_ && param1))
                        {
                           addr151:
                           §§push(§§pop() / _loc4_);
                        }
                        if(_loc6_)
                        {
                           §§pop().stageHeight = §§pop();
                           loop14:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§74§ = param1;
                                 if(_loc7_)
                                 {
                                    continue loop14;
                                 }
                                 if(!(_loc7_ && this))
                                 {
                                    this.§]w§ = param2;
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§@&§);
                                             if(_loc6_)
                                             {
                                                addr58:
                                                if(!(_loc7_ && param3))
                                                {
                                                   continue loop0;
                                                }
                                                addr180:
                                                while(true)
                                                {
                                                   §§push(this.§`[§);
                                                   §§goto(addr58);
                                                }
                                             }
                                             else
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      addr128:
                                                      §§push(this.§`[§);
                                                      §§push(_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§!Z§);
                                                         if(_loc6_)
                                                         {
                                                            addr175:
                                                            §§pop().stageWidth = §§pop();
                                                            while(true)
                                                            {
                                                               continue loop13;
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr128);
                                                            addr176:
                                                         }
                                                         addr183:
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().stageHeight = §§pop();
                                                §§goto(addr183);
                                             }
                                          }
                                          addr72:
                                          §§pop().dispatchEvent(new §,Q§(flash.events.Event.RESIZE,param1,param2));
                                          return;
                                          addr103:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr180);
                                       }
                                       addr202:
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr183);
                              }
                           }
                        }
                        §§goto(addr199);
                     }
                  }
                  while(true)
                  {
                     §§pop().stageWidth = §§pop();
                     §§goto(addr202);
                     §§goto(addr200);
                  }
               }
            }
            else
            {
               §§push(this.§@&§);
            }
            §§goto(addr161);
         }
         §§goto(addr103);
      }
      
      public function §%G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.setCanvasSize(this.§!Z§,this.§`[§);
         }
      }
      
      private function §;!1§(param1:flash.events.Event) : void
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
            §§push(this.§1-§);
            if(!(_loc9_ && param1))
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_ || _loc2_)
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr80);
            }
            addr60:
            §§pop();
            if(!(_loc9_ && _loc2_))
            {
               addr68:
               §§push(this.§!<§);
               if(!(_loc9_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(_loc10_)
                  {
                     addr80:
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§goto(addr83);
                        }
                     }
                     addr94:
                     if(param1 is MouseEvent)
                     {
                        §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                        if(!_loc9_)
                        {
                           _loc2_ = §§pop();
                           §§push(Number(_loc6_.stageY));
                        }
                        _loc3_ = §§pop();
                        _loc4_ = 0;
                        while(true)
                        {
                           if(param1.type == MouseEvent.MOUSE_DOWN)
                           {
                              this.§9!6§ = true;
                              break;
                           }
                           if(param1.type != MouseEvent.MOUSE_UP)
                           {
                              break;
                           }
                           this.§9!6§ = false;
                           if(true)
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                        if(_loc10_)
                        {
                           _loc2_ = §§pop();
                           addr168:
                           if(_loc10_)
                           {
                              §§push(Number(_loc7_.stageY));
                           }
                           var _loc8_:* = param1.type;
                           if(_loc10_)
                           {
                              if(TouchEvent.TOUCH_BEGIN === _loc8_)
                              {
                                 §§push(0);
                              }
                              else if(TouchEvent.TOUCH_MOVE === _loc8_)
                              {
                                 if(_loc10_)
                                 {
                                    addr303:
                                    §§push(1);
                                 }
                                 else
                                 {
                                    addr336:
                                    §§push(3);
                                    if(_loc9_)
                                    {
                                       addr355:
                                    }
                                 }
                              }
                              else if(TouchEvent.TOUCH_END === _loc8_)
                              {
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(2);
                                    if(_loc9_ && _loc2_)
                                    {
                                       §§goto(addr355);
                                    }
                                 }
                                 else
                                 {
                                    addr346:
                                    §§push(4);
                                 }
                              }
                              else
                              {
                                 if(MouseEvent.MOUSE_DOWN === _loc8_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §§goto(addr336);
                                    }
                                    addr360:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(§else§.§ R§);
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                _loc5_ = §§pop();
                                                break;
                                             }
                                             addr278:
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                _loc5_ = §§pop();
                                                break;
                                                addr282:
                                             }
                                             loop1:
                                             while(true)
                                             {
                                                §§push(§§pop() == §else§.§ R§);
                                                if(_loc10_)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(Number(§§pop() - this.§09§.x));
                                                         }
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() - this.§09§.y);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     addr398:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < this.§09§.top);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc3_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() >= this.§09§.bottom);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          break loop7;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr454:
                                                                                 }
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§pop();
                                                                                 addr466:
                                                                                 continue loop1;
                                                                                 addr466:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr517:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() < this.§09§.left);
                                                                                 §§push(§§pop() < this.§09§.left);
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(_loc2_ >= this.§09§.right);
                                                                                    }
                                                                                    break loop6;
                                                                                    addr506:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           addr496:
                                                                        }
                                                                        break loop6;
                                                                     }
                                                                     §§goto(addr454);
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr506);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr506);
                                                               }
                                                            }
                                                            §§pop();
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr466);
                                             }
                                             addr423:
                                          }
                                          else
                                          {
                                             addr225:
                                             addr226:
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   break;
                                                   addr273:
                                                }
                                             }
                                             else
                                             {
                                                addr257:
                                                _loc5_ = §§pop();
                                             }
                                             if(_loc10_ || this)
                                             {
                                                addr218:
                                                break;
                                             }
                                          }
                                          §§goto(addr282);
                                       case 1:
                                          §§goto(addr278);
                                       case 2:
                                          _loc5_ = §else§.§1!9§;
                                          §§goto(addr273);
                                       case 3:
                                          §§push(§else§.§&i§);
                                          §§push(§else§.§ R§);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§goto(addr257);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr423);
                                       case 4:
                                          §§push(§else§.§1!9§);
                                          if(_loc10_)
                                          {
                                             §§goto(addr225);
                                          }
                                          §§goto(addr226);
                                       case 5:
                                          §§push(this.§9!6§);
                                          if(_loc10_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(§else§.§&i§);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc10_ || this)
                                                      {
                                                         addr210:
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr225);
                                                      }
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr469);
                                             }
                                             else
                                             {
                                                §§push(§else§.§+N§);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr496);
                                    }
                                    §§goto(addr517);
                                    §§push(_loc2_);
                                 }
                                 else
                                 {
                                    if(MouseEvent.MOUSE_UP === _loc8_)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§goto(addr346);
                                       }
                                    }
                                    else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                    {
                                       §§goto(addr360);
                                       §§push(6);
                                    }
                                    §§goto(addr360);
                                 }
                                 §§push(5);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr355);
                                 }
                              }
                              §§goto(addr360);
                           }
                           §§goto(addr303);
                        }
                        _loc3_ = §§pop();
                        if(!(_loc9_ && _loc3_))
                        {
                           _loc4_ = _loc7_.touchPointID;
                        }
                     }
                     §§goto(addr168);
                  }
               }
               §§goto(addr94);
            }
            addr83:
            return;
         }
         §§goto(addr68);
      }
      
      private function get §>w§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=B§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(!(_loc5_ && param3))
         {
            if(param1 in this.§,!%§)
            {
               if(!_loc5_)
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr69:
               (_loc4_ = this.§9o§.createProgram()).upload(param2,param3);
               if(_loc6_ || param2)
               {
                  this.§,!%§[param1] = _loc4_;
               }
            }
            else if(this.§9o§ != null)
            {
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §8!@§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§ %§(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§,!%§[param1];
                  }
                  while(_loc3_);
                  
                  addr59:
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function § %§(param1:String) : Program3D
      {
         return this.§,!%§[param1] as Program3D;
      }
      
      public function §6!B§(param1:String) : Boolean
      {
         return param1 in this.§,!%§;
      }
      
      public function get §7!<§() : Boolean
      {
         return this.§1-§;
      }
      
      public function get §[A§() : §>D§
      {
         return this.§`9§;
      }
      
      public function get §"!R§() : Boolean
      {
         return this.§=4§;
      }
      
      public function set §"!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=4§ = param1;
            while(this.§9o§)
            {
               if(_loc2_)
               {
                  this.§4!F§.§"!R§ = param1;
               }
               if(!(_loc3_ && param1))
               {
                  addr50:
                  break;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,4§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,4§ = param1;
            while(this.§9o§)
            {
               if(_loc3_)
               {
                  this.§9o§.enableErrorChecking = param1;
               }
               if(_loc3_)
               {
                  addr46:
                  break;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function get §2_§() : int
      {
         return this.§!!4§;
      }
      
      public function set §2_§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!4§ = param1;
            do
            {
               this.§!n§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §&!L§() : Rectangle
      {
         return this.§09§.clone();
      }
      
      public function set §&!L§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§09§ = param1.clone();
            do
            {
               this.§!n§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §"0§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(_loc3_)
         {
            if(this.§31§ == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§31§ = new Sprite();
                  addr43:
               }
               _loc1_ = new ContextMenu();
               if(_loc3_)
               {
                  _loc1_.hideBuiltInItems();
                  loop0:
                  while(true)
                  {
                     addr73:
                     while(true)
                     {
                        this.§31§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§68§();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr81);
                  }
                  §§goto(addr73);
               }
            }
            return this.§31§;
         }
         §§goto(addr43);
      }
      
      public function get stage() : § N§.Stage
      {
         return this.§@&§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §2!@§() : flash.display.Stage
      {
         return this.§^;§;
      }
      
      public function get §,;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@!9§);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
   }
}
