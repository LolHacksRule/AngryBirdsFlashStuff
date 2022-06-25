package §<&§
{
   import §'!9§.DisplayObject;
   import §'!9§.Stage;
   import §<!o§.§;e§;
   import §^!+§.Texture;
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
   import starling.events.§&!h§;
   import starling.events.§,f§;
   import starling.events.§;@§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^b§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §=z§:§^b§;
      
      private static var §8b§:Boolean;
      
      private static var §!!`§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §;p§:§'!9§.Stage;
      
      private var §"!e§:Class;
      
      private var §>c§:§'!9§.DisplayObject;
      
      private var §-2§:§;e§;
      
      private var §08§:Boolean;
      
      private var §2!'§:Boolean;
      
      private var §!!P§:§`K§;
      
      private var § >§:§&!h§;
      
      private var §"l§:int;
      
      private var §9c§:Boolean;
      
      private var §&!J§:Boolean;
      
      private var §,!e§:Number;
      
      private var §&!D§:Rectangle;
      
      private var §@T§:Boolean;
      
      private var §&L§:flash.display.Stage;
      
      private var §'!u§:Sprite;
      
      private var §1U§:Context3D;
      
      private var §#s§:Dictionary;
      
      private var §3s§:int;
      
      private var §%Z§:Boolean;
      
      private var §1!J§:Number;
      
      private var §86§:Number;
      
      private var §-m§:Number;
      
      private var §#'§:Number;
      
      private var §3!C§:Number;
      
      private var §]!T§:Number;
      
      private var §8C§:Function;
      
      private var §%!v§:uint;
      
      private var §?W§:String;
      
      private var §>R§:Bitmap;
      
      private var §8D§:Boolean = false;
      
      private var §6B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §+!Y§:Boolean = false;
      
      public function §^b§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
                           this.§,!e§ = getTimer() / 1000;
                           addr122:
                           addr134:
                           loop7:
                           while(!(_loc10_ && param1))
                           {
                              this.§#s§ = new Dictionary();
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
                                       this.§&!J§ = false;
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
                                       this.§"l§ = 0;
                                       break loop6;
                                    }
                                    addr301:
                                    while(true)
                                    {
                                       this.§-m§ = this.§1!J§;
                                       addr296:
                                       while(true)
                                       {
                                          this.§#'§ = this.§86§;
                                          addr290:
                                          while(true)
                                          {
                                             this.§3!C§ = param2.stageWidth;
                                             addr284:
                                             loop13:
                                             while(true)
                                             {
                                                this.§]!T§ = param2.stageHeight;
                                                addr278:
                                                while(true)
                                                {
                                                   §16§ = true;
                                                   addr272:
                                                   while(true)
                                                   {
                                                      this.§4!k§();
                                                      addr267:
                                                      while(true)
                                                      {
                                                         this.§"!e§ = param1;
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
                                          this.§&!D§ = param3;
                                          addr251:
                                          addr241:
                                          while(true)
                                          {
                                             this.mStage3D = param4;
                                             do
                                             {
                                                this.§;p§ = new §'!9§.Stage(param3.width,param3.height,param2.color);
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
                                             this.§&L§ = param2;
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
                                                this.§ >§ = new §&!h§(this.§;p§);
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
                                       this.§-2§ = new §;e§();
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
                           this.§9c§ = false;
                           §§goto(addr139);
                        }
                        §§goto(addr232);
                     }
                     else
                     {
                        for each(_loc6_ in this.§#b§)
                        {
                           if(_loc9_)
                           {
                              param2.addEventListener(_loc6_,this.§0,§,false,0,true);
                           }
                        }
                        if(_loc9_)
                        {
                           param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!4§,false,0,true);
                           loop19:
                           while(true)
                           {
                              param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!4§,false,0,true);
                              while(true)
                              {
                                 this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!!X§,false,1,true);
                                 loop21:
                                 while(_loc9_)
                                 {
                                    this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§]!d§,false,1,true);
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
                                             this.§?W§ = param5;
                                             if(!(_loc9_ || this))
                                             {
                                                continue loop25;
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr356);
                                       })
                                       {
                                          this.§6!a§(true);
                                          while(true)
                                          {
                                             this.§%!v§ = param2.color;
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
                              this.§1!J§ = param3.width;
                              if(!_loc10_)
                              {
                                 this.§86§ = param3.height;
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
      
      public static function get §7h§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§9E§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr40:
                     §§push(§9E§.§%Z§);
                     if(!(_loc2_ && §^b§))
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
      
      public static function §@@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§=z§);
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
                           §§push(§=z§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§8D§);
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
                                          §§push(§=z§);
                                          loop10:
                                          while(!_loc2_)
                                          {
                                             §§push(§§pop().§1U§ == null);
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
                                                                  §§push(§=z§);
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
                                                            if(_loc1_ || §^b§)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(_loc2_ && §^b§)
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
      
      public static function get §9E§() : §^b§
      {
         return §=z§;
      }
      
      public static function get §&#§() : §;e§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^b§))
         {
            §§push(§=z§);
            if(!_loc2_)
            {
               return !!§§pop() ? §=z§.§&#§ : null;
            }
         }
         §§goto(addr28);
      }
      
      public static function get §2!J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2!J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §16§() : Boolean
      {
         return §8b§;
      }
      
      public static function set §16§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §^b§)
         {
            if(§=z§ == null)
            {
               do
               {
                  §8b§ = param1;
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
      
      public static function §;!;§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(§9E§)
            {
               if(!_loc5_)
               {
                  §§goto(addr37);
               }
            }
            return null;
         }
         addr37:
         return Texture.§>x§(§9E§.§1U§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            §§push(§=z§);
            if(!_loc4_)
            {
               if(§§pop().§1U§)
               {
                  if(_loc3_)
                  {
                     §§push(§=z§);
                     if(!_loc4_)
                     {
                        §§pop().§1U§.drawToBitmapData(param1);
                        if(!(_loc3_ || §^b§))
                        {
                           addr82:
                           _loc2_ = §=z§.§!!P§.canvas;
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
                        §§push(§§pop().§!!P§);
                        if(!(_loc4_ && §^b§))
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
                  §§push(§=z§);
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
      
      public function get §=q§() : §'!9§.DisplayObject
      {
         return this.§>c§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!v§ = param1;
         }
      }
      
      public function get §%!m§() : Number
      {
         return this.§1!J§;
      }
      
      public function get §`+§() : Number
      {
         return this.§86§;
      }
      
      public function §#[§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§?W§);
         }
         catch(e:Error)
         {
            § !u§("Context3D error: " + e.message);
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
            this.§+!Y§ = true;
         }
         loop0:
         while(true)
         {
            this.§&L§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!4§,false);
            while(true)
            {
               this.§&L§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!4§,false);
               while(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!!X§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§]!d§,false);
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
                        var _loc4_:* = this.§#b§;
                        addr111:
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc3_,_loc4_);
                              if(_loc6_)
                              {
                                 this.§&L§.removeEventListener(_loc1_,this.§0,§,false);
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
                                       _loc4_ = this.§#s§;
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
                                       if(this.§1U§)
                                       {
                                          addr301:
                                          this.§1U§.dispose();
                                       }
                                       §§push(this.§ >§);
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             addr290:
                                             if(_loc6_)
                                             {
                                                addr294:
                                                this.§ >§.dispose();
                                                addr295:
                                                if(!_loc5_)
                                                {
                                                   addr257:
                                                   §§push(this.§!!P§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr278:
                                                         if(_loc6_)
                                                         {
                                                            addr282:
                                                            this.§!!P§.dispose();
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
                                    if(§=z§ == this)
                                    {
                                       addr251:
                                       if(!_loc5_)
                                       {
                                          §=z§ = null;
                                          addr256:
                                       }
                                       §§goto(addr283);
                                    }
                                    addr229:
                                    §§push(Boolean(this.§>R§));
                                    if(Boolean(this.§>R§))
                                    {
                                       addr231:
                                       §§pop();
                                       addr232:
                                       if(_loc6_ || _loc1_)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(Boolean(this.§>R§.bitmapData));
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
                                          this.§>R§.bitmapData.dispose();
                                       }
                                       addr215:
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             this.§>R§.bitmapData = null;
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
      
      private function §]!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§1U§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§#s§ = new Dictionary();
               while(true)
               {
                  if(this.§1U§)
                  {
                     if(!_loc2_)
                     {
                        this.§1U§.enableErrorChecking = this.§&!J§;
                     }
                     loop2:
                     while(_loc1_)
                     {
                        if(this.§1U§.driverInfo.indexOf("Software") >= 0)
                        {
                           addr70:
                           while(true)
                           {
                              this.§%Z§ = true;
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
                              this.§=#§();
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
                  this.§%Z§ = true;
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
      
      private function §?!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;p§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>c§);
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
                                 this.§>c§ = new this.§"!e§();
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
                              §§push(this.§>c§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(null);
                                 if(!_loc1_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§;p§);
                                          if(!_loc1_)
                                          {
                                             §§pop().addChild(this.§>c§);
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
                           throw new Error("Invalid root class: " + this.§"!e§);
                        }
                     }
                  }
               }
               §§goto(addr122);
            }
         }
         §§goto(addr116);
      }
      
      private function §=#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§6B§ = true;
         }
         do
         {
            this.mStage3D.x = this.§&!D§.x;
            do
            {
               this.mStage3D.y = this.§&!D§.y;
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
            §§push(§@@§());
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
                  §§push(this.§6B§);
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
                           if(this.§1U§)
                           {
                              while(true)
                              {
                                 this.§1U§.configureBackBuffer(this.§&!D§.width,this.§&!D§.height,this.§"l§,false);
                                 while(true)
                                 {
                                 }
                              }
                              addr69:
                           }
                           do
                           {
                              this.§6B§ = false;
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
                  §§push(§§pop() - this.§,!e§);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc1_)
               {
                  this.§,!e§ = _loc1_;
                  while(true)
                  {
                     §§push(this.§;p§);
                     loop7:
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        loop8:
                        while(true)
                        {
                           this.§-2§.advanceTime(_loc2_);
                           loop9:
                           while(true)
                           {
                              this.§ >§.advanceTime(_loc2_);
                              loop10:
                              while(true)
                              {
                                 §§push(this.§!!P§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().§ !T§(this.§;p§.stageWidth,this.§;p§.stageHeight);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§!!P§);
                                       loop13:
                                       while(true)
                                       {
                                          §§pop().clear(this.§1U§,this.§%!v§,1);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§!!P§);
                                             loop15:
                                             while(true)
                                             {
                                                §§pop().§6#§(this.§1U§,this.§3s§);
                                                continue loop9;
                                                addr148:
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§pop().finishRendering(this.§1U§);
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
                                                            this.§8C§();
                                                            while(_loc3_ || this)
                                                            {
                                                               this.§8C§ = null;
                                                               break loop26;
                                                            }
                                                            continue loop8;
                                                         }
                                                         addr243:
                                                         while(_loc3_)
                                                         {
                                                            if(this.§8C§ != null)
                                                            {
                                                               continue loop21;
                                                            }
                                                            addr143:
                                                            while(true)
                                                            {
                                                               §§push(this.§!!P§);
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr148);
                                                                  addr193:
                                                                  §§push(this.§!!P§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().§[!P§();
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
                                                         §§push(this.§!!P§);
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
                           §§push(this.§;p§);
                           if(!(_loc3_ || this))
                           {
                              continue loop7;
                           }
                           §§pop().render(this.§!!P§,1);
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
      
      public function set §1E§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§8C§ = param1;
         }
      }
      
      private function §!!e§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§'!u§.x = this.§&!D§.x;
            if(_loc5_ || this)
            {
               this.§'!u§.y = this.§&!D§.y;
            }
         }
         var _loc1_:int = this.§'!u§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§'!u§.parent;
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
                                                      this.§&L§.removeChild(this.§'!u§);
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
                                                   §§push(this.§!!P§);
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
                                                                           §§push(this.§!!P§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().setCanvasSize(this.§-m§,this.§#'§,this.§&!D§.width / this.§;p§.stageWidth,this.§&!D§.height / this.§;p§.stageHeight);
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
                                                                  §§push(this.§!!P§);
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
                                                                     if(this.§>R§.bitmapData != _loc3_)
                                                                     {
                                                                        addr325:
                                                                        this.§>R§.bitmapData = _loc3_;
                                                                        addr329:
                                                                     }
                                                                     addr287:
                                                                     if(this.§&L§.getChildIndex(this.§'!u§) > 0)
                                                                     {
                                                                        addr305:
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           this.§&L§.removeChild(this.§'!u§);
                                                                           addr317:
                                                                           if(_loc5_)
                                                                           {
                                                                              this.§&L§.addChildAt(this.§'!u§,0);
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
                                                                           §§push(this.§!!P§);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc5_ || _loc1_)
                                                                           {
                                                                              this.§&L§.addChild(this.§'!u§);
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
      
      private function § !u§(param1:String) : void
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
                     _loc2_.width = this.§;p§.stageWidth * 0.75;
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
                              _loc2_.x = (this.§;p§.stageWidth - _loc2_.width) / 2;
                              while(true)
                              {
                                 _loc2_.y = (this.§;p§.stageHeight - _loc2_.height) / 2;
                                 continue loop5;
                                 addr61:
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       this.§^!W§.addChild(_loc2_);
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
      
      public function §4!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=z§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§08§ = true;
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
            this.§08§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §6!a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!'§ = param1;
         }
      }
      
      private function §6!r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8D§ = true;
            loop0:
            while(this.§>R§ == null)
            {
               while(!_loc2_)
               {
                  this.§>R§ = new Bitmap();
                  do
                  {
                     this.§^!W§.addChild(this.§>R§);
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
      
      private function §]!d§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!r§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc2_ && this);
         
      }
      
      private function §!!X§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§+!Y§);
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
                     §§push(Boolean(this.§1U§));
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
                                    §§push(this.§%Z§);
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
                                                            this.§1U§ = null;
                                                            loop18:
                                                            while(true)
                                                            {
                                                               this.§6!r§();
                                                               loop19:
                                                               while(!(_loc4_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!this.§1U§)
                                                                     {
                                                                        this.§!!P§ = new §[;§();
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§push(this.§!!P§);
                                                                              loop22:
                                                                              for(; !_loc4_; §§push(this.§!!P§),if(_loc5_)
                                                                              {
                                                                                 §§pop().clear(null,this.§%!v§);
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
                                                                                             this.§ >§.§7J§ = this.§9c§;
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
                                                                                    §§pop().setCanvasSize(this.§-m§,this.§#'§,this.§&!D§.width / this.§;p§.stageWidth,this.§&!D§.height / this.§;p§.stageHeight);
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
                                                                                          §§push(this.§!!P§);
                                                                                          break loop22;
                                                                                       }
                                                                                       addr358:
                                                                                    }
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§^b§.§16§);
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
                                                                                                      §§push(Boolean(this.§1U§));
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
                                                                                                      this.§4!k§();
                                                                                                      addr293:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§]!w§();
                                                                                                         addr287:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§?!C§();
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
                                                                                                this.§ !u§("Fatal error: The application lost the device context!");
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
                                                                                 this.§!!P§ = new §`K§();
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
                  §§push((_loc2_ = §§findproperty(§!!`§)).§!!`§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc4_ && param1))
                  {
                     _loc2_.§!!`§ = _loc3_;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     this.§3s§ = §!!`§;
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
            this.§4!k§();
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
            §§push(§§pop() - this.§,!e§);
            if(!_loc5_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.§08§);
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
                                 this.§!!e§();
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
                        while(this.§'!u§)
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
      
      private function §0!4§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4!k§();
            do
            {
               this.§;p§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
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
            §§push(§§pop() / this.§1!J§);
            if(!(_loc6_ && param1))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() / this.§86§);
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
                     §§push(this.§;p§);
                     loop0:
                     while(true)
                     {
                        §§push(this.§1!J§);
                        loop1:
                        while(true)
                        {
                           if(_loc7_ || param2)
                           {
                              §§pop().stageWidth = §§pop();
                              while(true)
                              {
                                 §§push(this.§;p§);
                                 loop16:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc7_)
                                    {
                                       §§push(this.§86§);
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
                                                                     this.§-m§ = param1;
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        this.§#'§ = param2;
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ || param3))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§push(this.§;p§);
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
                                                                              §§push(this.§;p§);
                                                                              break loop6;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§1!J§);
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
      
      public function §?5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setCanvasSize(this.§1!J§,this.§86§);
         }
      }
      
      private function §0,§(param1:flash.events.Event) : void
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
            §§push(this.§08§);
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
                           §§push(this.§2!'§);
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
                                                   this.§@T§ = false;
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
                                                                        §§push(§;@§.§`O§);
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
                                                                                    §§push(§§pop() < this.§&!D§.left);
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
                                                                                                      §§push(§§pop() >= this.§&!D§.right);
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
                                                                                                                              §§push(§§pop() < this.§&!D§.top);
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
                                                                                                                                    §§push(§§pop() >= this.§&!D§.bottom);
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
                                                                                                                                                                  §§push(§§pop() - this.§&!D§.y);
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
                                                                                                                                                      §§push(§§pop() - this.§&!D§.x);
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
                                                                        §§push(§;@§.§ 8§);
                                                                        §§push(§;@§.§>!q§);
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
                                                                        §§push(§;@§.§`O§);
                                                                        §§push(§;@§.§>!q§);
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
                                                                        §§push(this.§@T§);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§;@§.§ 8§);
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
                                                                              §§push(§;@§.§ ]§);
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
                                       
                                       this.§@T§ = true;
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
      
      private function get §#b§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §9!<§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param2)
         {
            if(param1 in this.§#s§)
            {
               if(!(_loc6_ && param1))
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr68:
               (_loc4_ = this.§1U§.createProgram()).upload(param2,param3);
               if(!_loc6_)
               {
                  this.§#s§[param1] = _loc4_;
               }
            }
            else if(this.§1U§ != null)
            {
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §6f§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§!g§(param1);
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
                  delete this.§#s§[param1];
               }
               while(_loc3_ && this);
               
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §!g§(param1:String) : Program3D
      {
         return this.§#s§[param1] as Program3D;
      }
      
      public function §91§(param1:String) : Boolean
      {
         return param1 in this.§#s§;
      }
      
      public function get §7[§() : Boolean
      {
         return this.§08§;
      }
      
      public function get §&#§() : §;e§
      {
         return this.§-2§;
      }
      
      public function get §7J§() : Boolean
      {
         return this.§9c§;
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9c§ = param1;
         }
         while(this.§1U§)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.§ >§.§7J§ = param1;
            }
            break;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!J§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§&!J§ = param1;
         }
         while(this.§1U§)
         {
            if(_loc2_)
            {
               this.§1U§.enableErrorChecking = param1;
            }
            if(!(_loc3_ && param1))
            {
               break;
            }
         }
      }
      
      public function get §`8§() : int
      {
         return this.§"l§;
      }
      
      public function set §`8§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"l§ = param1;
         }
         do
         {
            this.§=#§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §5t§() : Rectangle
      {
         return this.§&!D§.clone();
      }
      
      public function set §5t§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!D§ = param1.clone();
            do
            {
               this.§=#§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function get §^!W§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!_loc2_)
         {
            if(this.§'!u§ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§'!u§ = new Sprite();
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
                        this.§'!u§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
               }
               §§goto(addr47);
            }
            return this.§'!u§;
         }
         §§goto(addr47);
      }
      
      public function get stage() : §'!9§.Stage
      {
         return this.§;p§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §?!E§() : flash.display.Stage
      {
         return this.§&L§;
      }
      
      public function get §]d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8D§);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
   }
}
