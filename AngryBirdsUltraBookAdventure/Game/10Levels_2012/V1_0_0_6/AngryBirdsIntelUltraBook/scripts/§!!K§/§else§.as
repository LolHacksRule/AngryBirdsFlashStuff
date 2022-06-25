package §!!K§
{
   import §"H§.§+!y§;
   import §4>§.Texture;
   import §7!B§.DisplayObject;
   import §7!B§.Stage;
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
   import starling.events.§"!§;
   import starling.events.§5[§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^K§;
   
   public class §else§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §2!n§:§else§;
      
      private static var §>l§:Boolean;
      
      private static var §!!;§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §8!x§:§7!B§.Stage;
      
      private var §=T§:Class;
      
      private var §0t§:§7!B§.DisplayObject;
      
      private var §-!Q§:§+!y§;
      
      private var §2"§:Boolean;
      
      private var §4Z§:Boolean;
      
      private var §+!U§:§?%§;
      
      private var §0!B§:§5[§;
      
      private var §8!`§:int;
      
      private var §2j§:Boolean;
      
      private var §6$§:Boolean;
      
      private var §8!%§:Number;
      
      private var §22§:Rectangle;
      
      private var §9&§:Boolean;
      
      private var §2s§:flash.display.Stage;
      
      private var §^!a§:Sprite;
      
      private var §[,§:Context3D;
      
      private var §[!"§:Dictionary;
      
      private var §=x§:int;
      
      private var §=!7§:Boolean;
      
      private var §>f§:Number;
      
      private var §`!o§:Number;
      
      private var §[!6§:Number;
      
      private var §3!@§:Number;
      
      private var §&!L§:Number;
      
      private var §0!w§:Number;
      
      private var §?!q§:Function;
      
      private var §>!§:uint;
      
      private var §!!G§:String;
      
      private var §&!H§:Bitmap;
      
      private var §,u§:Boolean = false;
      
      private var §%M§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §=!w§:Boolean = false;
      
      public function §else§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param2)
         {
            super();
            if(_loc9_ || this)
            {
               if(param2 == null)
               {
                  if(_loc9_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop17:
                  while(true)
                  {
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           this.§8!%§ = getTimer() / 1000;
                           addr122:
                           addr134:
                           loop7:
                           while(!(_loc10_ && param1))
                           {
                              this.§[!"§ = new Dictionary();
                              if(_loc10_)
                              {
                                 continue;
                              }
                              if(!_loc10_)
                              {
                                 if(!_loc9_)
                                 {
                                    break loop6;
                                 }
                                 continue loop17;
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc9_ || this)
                                 {
                                    addr146:
                                    if(_loc9_ || param3)
                                    {
                                       this.§6$§ = false;
                                       break loop7;
                                    }
                                    break;
                                 }
                                 addr166:
                                 loop2:
                                 while(!_loc10_)
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       this.§8!`§ = 0;
                                       break loop6;
                                    }
                                    addr301:
                                    while(true)
                                    {
                                       this.§[!6§ = this.§>f§;
                                       addr296:
                                       while(true)
                                       {
                                          this.§3!@§ = this.§`!o§;
                                          addr290:
                                          while(true)
                                          {
                                             this.§&!L§ = param2.stageWidth;
                                             addr284:
                                             loop13:
                                             while(true)
                                             {
                                                this.§0!w§ = param2.stageHeight;
                                                addr278:
                                                while(true)
                                                {
                                                   §]!-§ = true;
                                                   addr272:
                                                   while(true)
                                                   {
                                                      this.§9[§();
                                                      addr267:
                                                      while(true)
                                                      {
                                                         this.§=T§ = param1;
                                                         break loop2;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc10_ && param2))
                                    {
                                       while(true)
                                       {
                                          this.§22§ = param3;
                                          addr251:
                                          addr241:
                                          while(true)
                                          {
                                             this.mStage3D = param4;
                                             do
                                             {
                                                this.§8!x§ = new §7!B§.Stage(param3.width,param3.height,param2.color);
                                             }
                                             while(!(_loc9_ || param3));
                                             
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§goto(addr284);
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             this.§2s§ = param2;
                                             addr192:
                                             addr220:
                                             while(true)
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr203:
                                                         if(_loc9_ || param2)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                else
                                                {
                                                   §§goto(addr251);
                                                }
                                                continue loop16;
                                             }
                                             while(true)
                                             {
                                                this.§0!B§ = new §5[§(this.§8!x§);
                                                break loop4;
                                                §§goto(addr203);
                                             }
                                          }
                                       }
                                       addr263:
                                    }
                                    §§goto(addr296);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(!_loc10_)
                                    {
                                       this.§-!Q§ = new §+!y§();
                                       §§goto(addr166);
                                    }
                                    §§goto(addr267);
                                 }
                                 break;
                                 §§goto(addr146);
                              }
                              §§goto(addr192);
                           }
                           while(true)
                           {
                              continue loop6;
                              §§goto(addr122);
                           }
                        }
                        while(_loc9_)
                        {
                           this.§2j§ = false;
                           §§goto(addr139);
                        }
                        §§goto(addr232);
                     }
                     else
                     {
                        for each(_loc6_ in this.§8[§)
                        {
                           if(_loc9_)
                           {
                              param2.addEventListener(_loc6_,this.§`!D§,false,0,true);
                           }
                        }
                        if(_loc9_)
                        {
                           param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ >§,false,0,true);
                           loop19:
                           while(true)
                           {
                              param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ >§,false,0,true);
                              while(true)
                              {
                                 this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!r§,false,1,true);
                                 loop21:
                                 while(_loc9_)
                                 {
                                    this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8L§,false,1,true);
                                    loop22:
                                    while(true)
                                    {
                                       this.mStage3D.visible = false;
                                       loop23:
                                       for(; _loc9_; loop25:
                                       while(!(_loc10_ && param1))
                                       {
                                          continue loop19;
                                          while(true)
                                          {
                                             this.§!!G§ = param5;
                                             if(!(_loc9_ || this))
                                             {
                                                continue loop25;
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr356);
                                       })
                                       {
                                          this.§``§(true);
                                          while(true)
                                          {
                                             this.§>!§ = param2.color;
                                             continue loop23;
                                             addr347:
                                             if(_loc9_ || this)
                                             {
                                                if(!_loc10_)
                                                {
                                                   return;
                                                   addr356:
                                                }
                                                continue loop22;
                                             }
                                          }
                                       }
                                       continue loop21;
                                    }
                                 }
                              }
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr376);
                           }
                        }
                        §§goto(addr376);
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(_loc9_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr241);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr84:
                        if(param4 == null)
                        {
                           if(_loc9_)
                           {
                              param4 = param2.stage3Ds[0];
                              addr95:
                              this.§>f§ = param3.width;
                              if(!_loc10_)
                              {
                                 this.§`!o§ = param3.height;
                                 §§goto(addr301);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr84);
               }
               §§goto(addr290);
            }
            §§goto(addr267);
         }
         §§goto(addr263);
      }
      
      public static function get §@g§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§^!A§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr40:
                     §§push(§^!A§.§=!7§);
                     if(!(_loc2_ && §else§))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr49:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr49);
            }
            §§goto(addr40);
         }
         §§goto(addr49);
      }
      
      public static function §9!i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§2!n§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr150:
                        loop4:
                        while(true)
                        {
                           §§push(§2!n§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§,u§);
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§2!n§);
                                          loop10:
                                          while(!_loc2_)
                                          {
                                             §§push(§§pop().§[,§ == null);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            break loop2;
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc1_)
                                                            {
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  §§push(§2!n§);
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop10;
                                                                  continue loop10;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop9;
                                                            if(_loc1_ || §else§)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(_loc2_ && §else§)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  continue loop11;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop2;
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 break loop2;
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr150);
      }
      
      public static function get §^!A§() : §else§
      {
         return §2!n§;
      }
      
      public static function get §]!#§() : §+!y§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §else§))
         {
            §§push(§2!n§);
            if(!_loc2_)
            {
               return !!§§pop() ? §2!n§.§]!#§ : null;
            }
         }
         §§goto(addr28);
      }
      
      public static function get §]!j§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §]!-§() : Boolean
      {
         return §>l§;
      }
      
      public static function set §]!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §else§)
         {
            if(§2!n§ == null)
            {
               do
               {
                  §>l§ = param1;
               }
               while(!(_loc3_ || _loc2_));
               
               if(!(_loc2_ && _loc3_))
               {
                  return;
                  addr67:
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr67);
      }
      
      public static function §]N§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(§^!A§)
            {
               if(!_loc5_)
               {
                  §§goto(addr37);
               }
            }
            return null;
         }
         addr37:
         return Texture.§4!`§(§^!A§.§[,§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            §§push(§2!n§);
            if(!_loc4_)
            {
               if(§§pop().§[,§)
               {
                  if(_loc3_)
                  {
                     §§push(§2!n§);
                     if(!_loc4_)
                     {
                        §§pop().§[,§.drawToBitmapData(param1);
                        if(!(_loc3_ || §else§))
                        {
                           addr82:
                           _loc2_ = §2!n§.§+!U§.canvas;
                           addr80:
                           if(!_loc4_)
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
                        addr60:
                        §§push(§§pop().§+!U§);
                        if(!(_loc4_ && §else§))
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr80);
                           }
                           addr99:
                           return;
                        }
                     }
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(§2!n§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr60);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr51);
      }
      
      public function get §]'§() : §7!B§.DisplayObject
      {
         return this.§0t§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!§ = param1;
         }
      }
      
      public function get §4A§() : Number
      {
         return this.§>f§;
      }
      
      public function get §<O§() : Number
      {
         return this.§`!o§;
      }
      
      public function §2!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§!!G§);
         }
         catch(e:Error)
         {
            §7!L§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc5_ && this))
         {
            this.§=!w§ = true;
         }
         loop0:
         while(true)
         {
            this.§2s§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ >§,false);
            while(true)
            {
               this.§2s§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ >§,false);
               while(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!r§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8L§,false);
                        }
                        while(!(_loc6_ || _loc2_));
                        
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc3_:int = 0;
                        var _loc4_:* = this.§8[§;
                        addr111:
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc3_,_loc4_);
                              if(_loc6_)
                              {
                                 this.§2s§.removeEventListener(_loc1_,this.§`!D§,false);
                              }
                              §§goto(addr111);
                           }
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    _loc3_ = 0;
                                    if(!_loc5_)
                                    {
                                       addr127:
                                       _loc4_ = this.§[!"§;
                                       addr152:
                                       for each(_loc2_ in _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc2_.dispose();
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(this.§[,§)
                                       {
                                          addr301:
                                          this.§[,§.dispose();
                                       }
                                       §§push(this.§0!B§);
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             addr290:
                                             if(_loc6_)
                                             {
                                                addr294:
                                                this.§0!B§.dispose();
                                                addr295:
                                                if(!_loc5_)
                                                {
                                                   addr257:
                                                   §§push(this.§+!U§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr278:
                                                         if(_loc6_)
                                                         {
                                                            addr282:
                                                            this.§+!U§.dispose();
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr282);
                                                }
                                             }
                                             §§goto(addr301);
                                          }
                                          §§goto(addr257);
                                       }
                                       §§goto(addr294);
                                    }
                                    addr283:
                                    if(§2!n§ == this)
                                    {
                                       addr251:
                                       if(!_loc5_)
                                       {
                                          §2!n§ = null;
                                          addr256:
                                       }
                                       §§goto(addr283);
                                    }
                                    addr229:
                                    §§push(Boolean(this.§&!H§));
                                    if(Boolean(this.§&!H§))
                                    {
                                       addr231:
                                       §§pop();
                                       addr232:
                                       if(_loc6_ || _loc1_)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(Boolean(this.§&!H§.bitmapData));
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr231);
                                             addr246:
                                          }
                                          §§goto(addr290);
                                       }
                                       §§goto(addr256);
                                    }
                                    addr202:
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          this.§&!H§.bitmapData.dispose();
                                       }
                                       addr215:
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             this.§&!H§.bitmapData = null;
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!(_loc6_ || _loc1_))
                                                {
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr251);
                                    }
                                    addr164:
                                    return;
                                 }
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr152);
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §1!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§[,§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§[!"§ = new Dictionary();
               while(true)
               {
                  if(this.§[,§)
                  {
                     if(!_loc2_)
                     {
                        this.§[,§.enableErrorChecking = this.§6$§;
                     }
                     loop2:
                     while(_loc1_)
                     {
                        if(this.§[,§.driverInfo.indexOf("Software") >= 0)
                        {
                           addr70:
                           while(true)
                           {
                              this.§=!7§ = true;
                              addr83:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           addr70:
                        }
                        while(true)
                        {
                           addr28:
                           while(true)
                           {
                              this.§=?§();
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr70);
                              }
                           }
                           §§goto(addr83);
                        }
                     }
                     continue;
                  }
                  this.§=!7§ = true;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr28);
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §7!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§8!x§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§0t§);
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
                                 this.§0t§ = new this.§=T§();
                                 addr116:
                                 while(true)
                                 {
                                 }
                              }
                              addr112:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§0t§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(null);
                                 if(!_loc1_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§8!x§);
                                          if(!_loc1_)
                                          {
                                             §§pop().addChild(this.§0t§);
                                             if(_loc1_ && _loc1_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!(_loc2_ || this))
                                                      {
                                                         return;
                                                      }
                                                      addr122:
                                                      continue;
                                                   }
                                                   §§goto(addr112);
                                                }
                                                break;
                                             }
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break loop5;
                                             }
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr116);
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           throw new Error("Invalid root class: " + this.§=T§);
                        }
                     }
                  }
               }
               §§goto(addr122);
            }
         }
         §§goto(addr116);
      }
      
      private function §=?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%M§ = true;
         }
         do
         {
            this.mStage3D.x = this.§22§.x;
            do
            {
               this.mStage3D.y = this.§22§.y;
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §§push(§9!i§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr85);
               }
               loop1:
               while(true)
               {
                  §§push(this.§%M§);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           if(this.§[,§)
                           {
                              while(true)
                              {
                                 this.§[,§.configureBackBuffer(this.§22§.width,this.§22§.height,this.§8!`§,false);
                                 while(true)
                                 {
                                 }
                              }
                              addr69:
                           }
                           do
                           {
                              this.§%M§ = false;
                              if(_loc4_)
                              {
                                 continue;
                              }
                           }
                           while(!_loc3_);
                           
                           if(!(_loc3_ || _loc3_))
                           {
                              addr85:
                              return;
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           addr39:
                        }
                        §§goto(addr69);
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
               if(_loc3_ || this)
               {
                  §§push(§§pop() - this.§8!%§);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc1_)
               {
                  this.§8!%§ = _loc1_;
                  while(true)
                  {
                     §§push(this.§8!x§);
                     loop7:
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        loop8:
                        while(true)
                        {
                           this.§-!Q§.advanceTime(_loc2_);
                           loop9:
                           while(true)
                           {
                              this.§0!B§.advanceTime(_loc2_);
                              loop10:
                              while(true)
                              {
                                 §§push(this.§+!U§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().§ !2§(this.§8!x§.stageWidth,this.§8!x§.stageHeight);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§+!U§);
                                       loop13:
                                       while(true)
                                       {
                                          §§pop().clear(this.§[,§,this.§>!§,1);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§+!U§);
                                             loop15:
                                             while(true)
                                             {
                                                §§pop().§<6§(this.§[,§,this.§=x§);
                                                continue loop9;
                                                addr148:
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§pop().finishRendering(this.§[,§);
                                                   loop26:
                                                   while(_loc3_ || _loc3_)
                                                   {
                                                      addr175:
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop14;
                                                      }
                                                      addr260:
                                                      loop21:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                               addr224:
                                                            }
                                                            this.§?!q§();
                                                            while(_loc3_ || this)
                                                            {
                                                               this.§?!q§ = null;
                                                               break loop26;
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr243:
                                                         while(_loc3_)
                                                         {
                                                            if(this.§?!q§ != null)
                                                            {
                                                               continue loop21;
                                                            }
                                                            addr143:
                                                            while(true)
                                                            {
                                                               §§push(this.§+!U§);
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr148);
                                                                  addr193:
                                                                  §§push(this.§+!U§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().§>G§();
                                                                        if(_loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop26;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                            continue loop21;
                                                         }
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§+!U§);
                                                         continue loop11;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc3_ || this))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   addr168:
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr276:
                        while(true)
                        {
                           §§push(this.§8!x§);
                           if(!(_loc3_ || this))
                           {
                              continue loop7;
                           }
                           §§pop().render(this.§+!U§,1);
                           §§goto(addr260);
                        }
                     }
                  }
               }
               §§goto(addr276);
            }
         }
         §§goto(addr39);
      }
      
      public function set §<Y§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?!q§ = param1;
         }
      }
      
      private function §'C§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§^!a§.x = this.§22§.x;
            if(_loc5_ || this)
            {
               this.§^!a§.y = this.§22§.y;
            }
         }
         var _loc1_:int = this.§^!a§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^!a§.parent;
         if(_loc5_ || _loc1_)
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
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr255:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                    addr231:
                                    while(!_loc4_)
                                    {
                                    }
                                    continue loop5;
                                 }
                              }
                           }
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
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop7:
                                    for(; !_loc4_; if(!(_loc5_ || _loc3_))
                                    {
                                       continue;
                                    },if(_loc4_ && _loc1_)
                                    {
                                       continue loop3;
                                    },§§goto(addr198))
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§2s§.removeChild(this.§^!a§);
                                                      addr205:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr200:
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(this.§+!U§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop17:
                                                            for(; _loc5_ || _loc3_; §§push(Boolean(§§pop().canvas)),if(_loc4_ && this)
                                                            {
                                                               continue;
                                                            },if(!_loc5_)
                                                            {
                                                               continue loop16;
                                                            },if(!(_loc4_ && _loc1_))
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc5_ || _loc1_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§+!U§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().setCanvasSize(this.§[!6§,this.§3!@§,this.§22§.width / this.§8!x§.stageWidth,this.§22§.height / this.§8!x§.stageHeight);
                                                                              §§goto(addr118);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                               §§goto(addr285);
                                                               addr82:
                                                            },§§goto(addr231))
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§+!U§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  addr258:
                                                                  addr258:
                                                                  addr258:
                                                                  _loc3_ = §§pop().canvas;
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(this.§&!H§.bitmapData != _loc3_)
                                                                     {
                                                                        addr325:
                                                                        this.§&!H§.bitmapData = _loc3_;
                                                                        addr329:
                                                                     }
                                                                     addr287:
                                                                     if(this.§2s§.getChildIndex(this.§^!a§) > 0)
                                                                     {
                                                                        addr305:
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           this.§2s§.removeChild(this.§^!a§);
                                                                           addr317:
                                                                           if(_loc5_)
                                                                           {
                                                                              this.§2s§.addChildAt(this.§^!a§,0);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr285:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     addr330:
                                                                     return;
                                                                  }
                                                                  addr118:
                                                                  §§goto(addr285);
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr258);
                                                                           §§push(this.§+!U§);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc5_ || _loc1_)
                                                                           {
                                                                              this.§2s§.addChild(this.§^!a§);
                                                                           }
                                                                           §§goto(addr255);
                                                                           addr235:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(_loc2_));
                                                                        break loop17;
                                                                     }
                                                                     addr226:
                                                                  }
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr225:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            addr170:
                                                            continue loop3;
                                                         }
                                                         §§goto(addr82);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr258);
                                                }
                                             }
                                             addr198:
                                          }
                                          §§goto(addr225);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr235);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr255);
      }
      
      private function §7!L§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.align = TextFormatAlign.CENTER;
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
                     _loc2_.width = this.§8!x§.stageWidth * 0.75;
                     loop3:
                     while(true)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        loop4:
                        while(_loc5_)
                        {
                           _loc2_.text = param1;
                           loop5:
                           for(; !_loc4_; while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                           },continue loop4)
                           {
                              _loc2_.x = (this.§8!x§.stageWidth - _loc2_.width) / 2;
                              while(true)
                              {
                                 _loc2_.y = (this.§8!x§.stageHeight - _loc2_.height) / 2;
                                 continue loop5;
                                 addr61:
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       this.§0O§.addChild(_loc2_);
                                       addr70:
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr61);
                                             §§goto(addr70);
                                          }
                                          continue loop2;
                                          addr59:
                                       }
                                       addr47:
                                       if(_loc5_ || _loc3_)
                                       {
                                          return;
                                          addr54:
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop3;
                           if(_loc5_ || this)
                           {
                              _loc2_.background = true;
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §9[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2!n§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§2"§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2"§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §``§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4Z§ = param1;
         }
      }
      
      private function §8!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,u§ = true;
            loop0:
            while(this.§&!H§ == null)
            {
               while(!_loc2_)
               {
                  this.§&!H§ = new Bitmap();
                  do
                  {
                     this.§0O§.addChild(this.§&!H§);
                  }
                  while(!_loc1_);
                  
                  if(!_loc2_)
                  {
                     addr43:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §8L§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!w§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc2_ && this);
         
      }
      
      private function §3!r§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§=!w§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
                  loop13:
                  while(true)
                  {
                     §§push(Boolean(this.§[,§));
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop30:
                                 while(true)
                                 {
                                    §§push(this.§=!7§);
                                    if(_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       addr247:
                                       if(_loc5_ || _loc3_)
                                       {
                                          loop34:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr255:
                                             while(true)
                                             {
                                                addr256:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         this.mStage3DEnabled = false;
                                                         loop17:
                                                         while(true)
                                                         {
                                                            this.§[,§ = null;
                                                            loop18:
                                                            while(true)
                                                            {
                                                               this.§8!w§();
                                                               loop19:
                                                               while(!(_loc4_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!this.§[,§)
                                                                     {
                                                                        this.§+!U§ = new §&q§();
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§push(this.§+!U§);
                                                                              loop22:
                                                                              for(; !_loc4_; §§push(this.§+!U§),if(_loc5_)
                                                                              {
                                                                                 §§pop().clear(null,this.§>!§);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§0!B§.§catch§ = this.§2j§;
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                   §§goto(addr287);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§goto(addr353);
                                                                                                      }
                                                                                                      §§goto(addr293);
                                                                                                   }
                                                                                                   addr215:
                                                                                                }
                                                                                                §§goto(addr293);
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr189);
                                                                                    }
                                                                                 }
                                                                                 continue loop18;
                                                                              })
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().setCanvasSize(this.§[!6§,this.§3!@§,this.§22§.width / this.§8!x§.stageWidth,this.§22§.height / this.§8!x§.stageHeight);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue;
                                                                                    addr189:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr357:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§+!U§);
                                                                                          break loop22;
                                                                                       }
                                                                                       addr358:
                                                                                    }
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§else§.§]!-§);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr351:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr353:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(this.§[,§));
                                                                                                      addr312:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                         §§goto(addr247);
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(!§§pop())
                                                                                                {
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§9[§();
                                                                                                      addr293:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§1!d§();
                                                                                                         addr287:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§7!d§();
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            if(!(_loc5_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         addr307:
                                                                                                         return;
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr338:
                                                                                                this.§7!L§("Fatal error: The application lost the device context!");
                                                                                                addr341:
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.stop();
                                                                                                   §§goto(addr307);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr361:
                                                                                                }
                                                                                                addr336:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().dispose();
                                                                                 §§goto(addr361);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§+!U§ = new §?%§();
                                                                              }
                                                                              addr211:
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr365:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr357);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr207);
                                                }
                                                continue loop34;
                                             }
                                          }
                                          addr254:
                                       }
                                       §§goto(addr312);
                                    }
                                    §§goto(addr256);
                                 }
                              }
                              addr276:
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr276);
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§!!;§)).§!!;§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc4_ && param1))
                  {
                     _loc2_.§!!;§ = _loc3_;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     this.§=x§ = §!!;§;
                     §§goto(addr365);
                  }
               }
               §§goto(addr293);
            }
            §§goto(addr254);
         }
         §§goto(addr223);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            this.§9[§();
         }
         §§push(getTimer() / 1000);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.§8!%§);
            if(!_loc5_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.§2"§);
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(_loc3_ > 1);
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(_loc5_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              if(_loc5_)
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
                           if(!_loc5_)
                           {
                              this.render();
                           }
                           while(true)
                           {
                              addr74:
                              if(!(_loc5_ && param1))
                              {
                                 this.§'C§();
                              }
                              if(_loc5_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 §§goto(addr66);
                              }
                              §§goto(addr131);
                           }
                        }
                        while(this.§^!a§)
                        {
                           §§goto(addr74);
                        }
                        addr66:
                        return;
                     }
                  }
               }
            }
            §§goto(addr131);
         }
         §§goto(addr46);
      }
      
      private function § >§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§9[§();
            do
            {
               this.§8!x§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§>f§);
            if(!(_loc6_ && param1))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() / this.§`!o§);
               if(!(_loc6_ && this))
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  if(param3)
                  {
                     §§push(this.§8!x§);
                     loop0:
                     while(true)
                     {
                        §§push(this.§>f§);
                        loop1:
                        while(true)
                        {
                           if(_loc7_ || param2)
                           {
                              §§pop().stageWidth = §§pop();
                              while(true)
                              {
                                 §§push(this.§8!x§);
                                 loop16:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc7_)
                                    {
                                       §§push(this.§`!o§);
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_ || param3)
                                                      {
                                                         addr169:
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(_loc7_ || param2)
                                                         {
                                                            addr185:
                                                            §§pop().stageHeight = §§pop() / _loc4_;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§[!6§ = param1;
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        this.§3!@§ = param2;
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ || param3))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§push(this.§8!x§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc7_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           addr224:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§8!x§);
                                                                              break loop6;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>f§);
                                                                           addr228:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    addr238:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr239:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().stageWidth = §§pop();
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr237:
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  addr119:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr119);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr218);
                                 }
                              }
                              addr214:
                           }
                           §§goto(addr220);
                        }
                     }
                  }
                  §§goto(addr224);
               }
               §§goto(addr214);
            }
            §§goto(addr45);
         }
         §§goto(addr30);
      }
      
      public function §extends§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setCanvasSize(this.§>f§,this.§`!o§);
         }
      }
      
      private function §`!D§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_)
         {
            §§push(this.§2"§);
            if(_loc9_ || this)
            {
               §§push(!§§pop());
               if(_loc9_ || this)
               {
                  if(!§§pop())
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        addr59:
                        §§pop();
                        if(!(_loc10_ && param1))
                        {
                           addr67:
                           §§push(this.§4Z§);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                              if(_loc9_ || param1)
                              {
                                 addr79:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || _loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 addr98:
                                 if(param1 is MouseEvent)
                                 {
                                    addr99:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(_loc9_ || this)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr168:
                                          _loc3_ = _loc6_.stageY;
                                          while(true)
                                          {
                                             _loc4_ = 0;
                                          }
                                          addr169:
                                       }
                                       do
                                       {
                                          while(param1.type != MouseEvent.MOUSE_DOWN)
                                          {
                                             if(param1.type == MouseEvent.MOUSE_UP)
                                             {
                                                if(!_loc10_)
                                                {
                                                   this.§9&§ = false;
                                                }
                                                if(!_loc10_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr204:
                                                      var _loc8_:* = param1.type;
                                                      if(!(_loc10_ && this))
                                                      {
                                                         if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(0);
                                                               if(!_loc9_)
                                                               {
                                                                  addr432:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr404:
                                                               §§push(1);
                                                               if(_loc10_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr404);
                                                            }
                                                            else
                                                            {
                                                               addr429:
                                                               §§push(3);
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr432);
                                                               }
                                                               else
                                                               {
                                                                  addr465:
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§push(2);
                                                               if(_loc9_)
                                                               {
                                                                  addr470:
                                                                  loop34:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§^K§.§5i§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr684:
                                                                                 §§push(_loc2_);
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < this.§22§.left);
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr692:
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= this.§22§.right);
                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr682:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr683:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           addr631:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < this.§22§.top);
                                                                                                                              addr635:
                                                                                                                              while(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr682:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop13:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr648:
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= this.§22§.bottom);
                                                                                                                                    if(!(_loc10_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                          addr613:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(_loc9_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop18:
                                                                                                                                                      while(!(_loc10_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            break loop34;
                                                                                                                                                         }
                                                                                                                                                         loop25:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(_loc9_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - this.§22§.y);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr514:
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr631);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr554:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc2_ = §§pop();
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr514);
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   break loop34;
                                                                                                                                                }
                                                                                                                                                §§goto(addr682);
                                                                                                                                                addr618:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr597:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr597:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§22§.x);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                   §§goto(addr597);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr596);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 §§goto(addr635);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr613);
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                         addr672:
                                                                                                      }
                                                                                                      §§goto(addr682);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr672);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr596:
                                                                              return;
                                                                           }
                                                                           addr361:
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              §§goto(addr684);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr325:
                                                                           _loc5_ = §§pop();
                                                                           addr324:
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr295:
                                                                              §§goto(addr684);
                                                                           }
                                                                        }
                                                                        §§goto(addr648);
                                                                     case 1:
                                                                        addr360:
                                                                        §§goto(addr361);
                                                                     case 2:
                                                                        addr347:
                                                                        §§push(§^K§.§6!A§);
                                                                        §§push(§^K§.§3!p§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§goto(addr684);
                                                                        }
                                                                        §§goto(addr692);
                                                                     case 3:
                                                                        §§goto(addr324);
                                                                     case 4:
                                                                        §§push(§^K§.§5i§);
                                                                        §§push(§^K§.§3!p§);
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr310:
                                                                              _loc5_ = §§pop();
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§goto(addr684);
                                                                              }
                                                                              §§goto(addr540);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr347);
                                                                           }
                                                                        }
                                                                        break;
                                                                     case 5:
                                                                        §§push(this.§9&§);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§^K§.§6!A§);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr280:
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr283:
                                                                                          if(_loc9_ || _loc2_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr295);
                                                                                                }
                                                                                                §§goto(addr684);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          §§goto(addr648);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr628);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§^K§.§[!7§);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr310);
                                                                                       }
                                                                                       §§goto(addr540);
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr325);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr283);
                                                                        }
                                                                        §§goto(addr620);
                                                                     default:
                                                                        §§goto(addr684);
                                                                  }
                                                                  continue loop32;
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr429);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr429);
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_UP === _loc8_)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr444:
                                                                  §§push(4);
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§goto(addr470);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr465);
                                                                  }
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                            {
                                                               §§goto(addr470);
                                                               §§push(6);
                                                            }
                                                            §§goto(addr470);
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                      §§goto(addr444);
                                                      addr170:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                }
                                                addr160:
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                       while(!(_loc9_ || param1));
                                       
                                       this.§9&§ = true;
                                       §§goto(addr160);
                                    }
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                    if(!_loc10_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr192:
                                          _loc3_ = _loc7_.stageY;
                                          if(_loc9_ || this)
                                          {
                                          }
                                          §§goto(addr204);
                                       }
                                       _loc4_ = _loc7_.touchPointID;
                                       §§goto(addr204);
                                    }
                                    §§goto(addr192);
                                 }
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr99);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr59);
            }
            §§goto(addr79);
         }
         §§goto(addr67);
      }
      
      private function get §8[§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=!!§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param2)
         {
            if(param1 in this.§[!"§)
            {
               if(!(_loc6_ && param1))
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr68:
               (_loc4_ = this.§[,§.createProgram()).upload(param2,param3);
               if(!_loc6_)
               {
                  this.§[!"§[param1] = _loc4_;
               }
            }
            else if(this.§[,§ != null)
            {
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §6!!§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§6"§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  addr72:
                  _loc2_.dispose();
               }
               do
               {
                  delete this.§[!"§[param1];
               }
               while(_loc3_ && this);
               
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §6"§(param1:String) : Program3D
      {
         return this.§[!"§[param1] as Program3D;
      }
      
      public function §%c§(param1:String) : Boolean
      {
         return param1 in this.§[!"§;
      }
      
      public function get §7U§() : Boolean
      {
         return this.§2"§;
      }
      
      public function get §]!#§() : §+!y§
      {
         return this.§-!Q§;
      }
      
      public function get §catch§() : Boolean
      {
         return this.§2j§;
      }
      
      public function set §catch§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2j§ = param1;
         }
         while(this.§[,§)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.§0!B§.§catch§ = param1;
            }
            break;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§6$§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6$§ = param1;
         }
         while(this.§[,§)
         {
            if(_loc2_)
            {
               this.§[,§.enableErrorChecking = param1;
            }
            if(!(_loc3_ && param1))
            {
               break;
            }
         }
      }
      
      public function get § do§() : int
      {
         return this.§8!`§;
      }
      
      public function set § do§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!`§ = param1;
         }
         do
         {
            this.§=?§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §3S§() : Rectangle
      {
         return this.§22§.clone();
      }
      
      public function set §3S§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§22§ = param1.clone();
            do
            {
               this.§=?§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function get §0O§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!_loc2_)
         {
            if(this.§^!a§ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§^!a§ = new Sprite();
                  addr47:
                  _loc1_ = new ContextMenu();
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.hideBuiltInItems();
                  }
                  loop0:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        this.§^!a§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
               }
               §§goto(addr47);
            }
            return this.§^!a§;
         }
         §§goto(addr47);
      }
      
      public function get stage() : §7!B§.Stage
      {
         return this.§8!x§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0!o§() : flash.display.Stage
      {
         return this.§2s§;
      }
      
      public function get §,i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,u§);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
   }
}
