package §`!a§
{
   import §%q§.Texture;
   import §6![§.DisplayObject;
   import §6![§.Stage;
   import §9!B§.§?![§;
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
   import starling.events.§"",§;
   import starling.events.§+Y§;
   import starling.events.§4"!§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §1"&§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §['§:Rectangle;
      
      private static var §5e§:Boolean = true;
      
      private static var §3!p§:Boolean;
      
      private static var §7!v§:§1"&§;
      
      private static var §]g§:Boolean;
      
      private static var § c§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "1.0";
            do
            {
               §5e§ = true;
            }
            while(_loc2_);
            
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §7Y§:§6![§.Stage;
      
      private var §8!V§:Class;
      
      private var §&!P§:§6![§.DisplayObject;
      
      private var §!!6§:§?![§;
      
      private var §"r§:Boolean;
      
      private var §%$§:Boolean;
      
      private var §&>§:§0L§;
      
      private var §"`§:§4"!§;
      
      private var §>!3§:int;
      
      private var §>'§:Boolean;
      
      private var §2&§:Boolean;
      
      private var §<!j§:Number;
      
      private var §<!>§:Boolean;
      
      private var §;"-§:flash.display.Stage;
      
      private var §#!T§:Sprite;
      
      private var §@"#§:Context3D;
      
      private var §=k§:Dictionary;
      
      private var §'K§:int;
      
      private var §@!V§:Boolean;
      
      private var §8z§:Number;
      
      private var §96§:Number;
      
      private var §8!L§:Number;
      
      private var §0S§:Number;
      
      private var §+N§:Number;
      
      private var §^7§:Number;
      
      private var §@_§:Function;
      
      private var §@=§:uint;
      
      private var §^!<§:String;
      
      private var §^r§:Bitmap;
      
      private var §>!q§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §>!i§:Boolean = false;
      
      private var §#?§:Boolean = false;
      
      public function §1"&§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!_loc10_)
         {
            super();
            if(!(_loc10_ && this))
            {
               if(param2 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop1:
                  while(true)
                  {
                     this.§!!6§ = new §?![§();
                     loop2:
                     for(; _loc9_ || param2; while(true)
                     {
                        if(!(_loc10_ && this))
                        {
                           if(!_loc10_)
                           {
                              if(!_loc10_)
                              {
                                 this.§2&§ = false;
                                 continue;
                              }
                              §§goto(addr242);
                           }
                           break;
                        }
                        continue loop2;
                     },§§goto(addr204))
                     {
                        this.§>!3§ = 0;
                        loop3:
                        while(_loc9_ || param1)
                        {
                           this.§>'§ = false;
                           continue loop2;
                           addr114:
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§<!j§ = getTimer() / 1000;
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       this.§=k§ = new Dictionary();
                                       if(!_loc10_)
                                       {
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                    addr139:
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc10_ && param3))
                                       {
                                          if(_loc9_ || param3)
                                          {
                                             if(_loc9_)
                                             {
                                                while(true)
                                                {
                                                   continue loop6;
                                                }
                                                addr155:
                                             }
                                             else
                                             {
                                                addr256:
                                                while(true)
                                                {
                                                   this.§8!V§ = param1;
                                                   break loop5;
                                                }
                                                addr256:
                                             }
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       §['§ = param3;
                                       addr247:
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          addr242:
                                          while(true)
                                          {
                                             this.§7Y§ = new §6![§.Stage(param3.width,param3.height,param2.color);
                                             addr237:
                                             while(true)
                                             {
                                                this.§;"-§ = param2;
                                                break loop3;
                                             }
                                          }
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                                 addr261:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       this.§4u§();
                                       §§goto(addr256);
                                       addr263:
                                    }
                                    else
                                    {
                                       loop12:
                                       while(!(_loc9_ || param2))
                                       {
                                          while(true)
                                          {
                                             this.§8!L§ = this.§8z§;
                                             continue loop12;
                                          }
                                       }
                                       this.§0S§ = this.§96§;
                                       addr288:
                                       while(true)
                                       {
                                          this.§+N§ = param2.stageWidth;
                                          break loop2;
                                       }
                                       addr288:
                                    }
                                 }
                              }
                              continue;
                           }
                           var _loc7_:int = 0;
                           var _loc8_:* = this.§-!§;
                           addr335:
                           for each(_loc6_ in _loc8_)
                           {
                              if(_loc9_ || param2)
                              {
                                 param2.addEventListener(_loc6_,this.§&r§,false,0,true);
                              }
                              §§goto(addr335);
                           }
                           if(_loc9_ || param1)
                           {
                              param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=h§,false,0,true);
                              param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=h§,false,0,true);
                              this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%;§,false,1,true);
                              addr456:
                              addr436:
                           }
                           this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§,!f§,false,1,true);
                           addr411:
                           if(_loc9_)
                           {
                              this.mStage3D.visible = false;
                              this.§1J§(true);
                              addr399:
                              if(_loc9_)
                              {
                                 this.§@=§ = param2.color;
                                 addr384:
                                 if(_loc9_)
                                 {
                                    this.§^!<§ = param5;
                                    if(!(_loc10_ && param1))
                                    {
                                       if(_loc9_)
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             if(!(_loc9_ || param3))
                                             {
                                                §§goto(addr456);
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr399);
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr436);
                              }
                              §§goto(addr411);
                           }
                           addr425:
                           §§goto(addr425);
                        }
                        while(true)
                        {
                           if(_loc10_)
                           {
                              continue;
                           }
                           if(!_loc10_)
                           {
                              while(true)
                              {
                                 this.§"`§ = new §4"!§(this.§7Y§);
                                 addr204:
                                 while(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       §;J§ = true;
                                       §§goto(addr261);
                                       addr282:
                                       this.§^7§ = param2.stageHeight;
                                    }
                                    §§goto(addr263);
                                 }
                                 continue loop1;
                              }
                              addr225:
                           }
                           §§goto(addr247);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc9_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr282);
                     }
                  }
                  addr206:
               }
               else
               {
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(_loc9_ || param3)
                        {
                           if(!(_loc10_ && param3))
                           {
                              throw new ArgumentError("Root class must not be null");
                           }
                           continue;
                        }
                        §§goto(addr206);
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
                                 if(!(_loc10_ && this))
                                 {
                                    param4 = param2.stage3Ds[0];
                                    addr100:
                                    this.§8z§ = param3.width;
                                    if(!_loc10_)
                                    {
                                       this.§96§ = param3.height;
                                       §§goto(addr306);
                                       addr106:
                                    }
                                    break;
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr242);
            }
            §§goto(addr225);
         }
         §§goto(addr288);
      }
      
      public static function get §'!g§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§1i§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr56:
                     §§push(§1i§.§@!V§);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr60);
            }
         }
         §§goto(addr56);
      }
      
      public static function § !R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§7!v§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr150:
                        loop3:
                        while(true)
                        {
                           §§push(§7!v§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§>!q§);
                              addr117:
                              while(_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr121:
                                    while(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          break loop1;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          addr125:
                                          while(!(_loc2_ && §1"&§))
                                          {
                                             §§push(§7!v§);
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr98:
                                    continue loop1;
                                    loop12:
                                    for(; !(_loc2_ && §1"&§); if(!(_loc1_ || _loc2_))
                                    {
                                       continue;
                                    },§§goto(addr49),§§push(!§§pop()))
                                    {
                                       §§pop();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§7!v§);
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue loop4;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop().§@"#§.driverInfo == "Disposed");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          addr49:
                                          if(_loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                break loop1;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_ && _loc1_)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop1;
                                                }
                                                continue loop12;
                                             }
                                             §§goto(addr121);
                                             addr89:
                                          }
                                          §§goto(addr124);
                                          addr113:
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr149);
            }
         }
         §§goto(addr150);
      }
      
      private static function §4x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3!p§ = true;
         }
      }
      
      public static function get §>!m§() : Rectangle
      {
         return §['§.clone();
      }
      
      public static function set §>!m§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §['§ = param1.clone();
         }
         do
         {
            §4x§();
         }
         while(_loc3_);
         
      }
      
      public static function set §"C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5e§ = param1;
         }
      }
      
      public static function get §"C§() : Boolean
      {
         return §5e§;
      }
      
      public static function get §1i§() : §1"&§
      {
         return §7!v§;
      }
      
      public static function get §"!U§() : §?![§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§7!v§);
            if(!_loc2_)
            {
               return !!§§pop() ? §7!v§.§"!U§ : null;
            }
         }
         §§goto(addr48);
      }
      
      public static function get §@!;§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §1"&§))
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §;J§() : Boolean
      {
         return §]g§;
      }
      
      public static function set §;J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§7!v§ == null)
            {
               do
               {
                  §]g§ = param1;
               }
               while(_loc2_ && _loc2_);
               
               if(!(_loc2_ && §1"&§))
               {
                  return;
                  addr62:
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr62);
      }
      
      public static function §7!#§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(§1i§)
            {
               if(_loc4_ || §1"&§)
               {
                  return Texture.§5r§(§1i§.§@"#§,param1,param2,param3);
               }
            }
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!(_loc4_ && §1"&§))
         {
            §§push(§7!v§);
            if(_loc3_)
            {
               if(§§pop().§@"#§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§7!v§);
                     if(!_loc4_)
                     {
                        §§pop().§@"#§.drawToBitmapData(param1);
                        addr41:
                        if(_loc4_)
                        {
                           addr77:
                           _loc2_ = §7!v§.§&>§.canvas;
                           addr75:
                           if(!_loc4_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        addr65:
                        §§push(§§pop().§&>§);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr75);
                           }
                           addr104:
                           return;
                        }
                     }
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(§7!v§);
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr41);
         }
         §§goto(addr77);
      }
      
      public function get §8U§() : §6![§.DisplayObject
      {
         return this.§&!P§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@=§ = param1;
         }
      }
      
      public function get §5_§() : Number
      {
         return this.§8z§;
      }
      
      public function get §1!b§() : Number
      {
         return this.§96§;
      }
      
      public function §4![§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               addr96:
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
                        addr88:
                        while(!_loc3_)
                        {
                           §§pop().§§slot[2] = §§pop();
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = false;
                                    addr84:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop8;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr64:
                              continue loop3;
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop3;
                              }
                              if(false)
                              {
                                 §§goto(addr80);
                              }
                              else
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc3_ && this))
                                    {
                                       §§pop().§§slot[1] = "flash.display3D.Context3DProfile";
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr228:
                                          var requestContext3D:Function = this.mStage3D.requestContext3D;
                                          addr225:
                                          var moreThanOne:Boolean = requestContext3D.length > 1;
                                          addr220:
                                          addr233:
                                          addr226:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             if(§§pop().§§slot[3])
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr198:
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§#?§);
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr205:
                                                            if(_loc4_ || this)
                                                            {
                                                               addr215:
                                                               §§pop().§§slot[4] = "baselineConstrained";
                                                               addr171:
                                                               addr173:
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr198);
                                                               }
                                                               addr179:
                                                               §§pop().§§slot[2](this.§^!<§,profile);
                                                               return;
                                                               addr217:
                                                               addr234:
                                                               addr183:
                                                               addr177:
                                                               addr176:
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr215);
                                                         §§push("baseline");
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr124:
                                                   §§push(§§pop().§§slot[2]);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(global);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§^!<§);
                                                         if(!_loc3_)
                                                         {
                                                            §§pop()(§§pop());
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr171);
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr124);
                                 }
                                 catch(e:Error)
                                 {
                                    §8g§("Context3D error: " + e.message);
                                    throw e;
                                 }
                                 §§goto(addr215);
                              }
                           }
                        }
                        continue loop1;
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
         if(_loc6_ || _loc3_)
         {
            this.§>!i§ = true;
            while(true)
            {
               this.§;"-§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=h§,false);
               while(!_loc5_)
               {
                  this.§;"-§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=h§,false);
                  addr49:
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%;§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§,!f§,false);
                        }
                        while(_loc5_ && this);
                        
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr49);
                     }
                     while(true)
                     {
                        §§goto(addr58);
                     }
                     addr58:
                     addr77:
                  }
                  var _loc3_:int = 0;
                  var _loc4_:* = this.§-!§;
                  loop5:
                  while(true)
                  {
                     §§push(§§hasnext(_loc4_,_loc3_));
                     if(!(_loc5_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc3_,_loc4_);
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§;"-§.removeEventListener(_loc1_,this.§&r§,false);
                           }
                           continue;
                        }
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 _loc3_ = 0;
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    _loc4_ = this.§=k§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       break loop5;
                                    }
                                    addr180:
                                    if(_loc6_)
                                    {
                                       if(this.§@"#§)
                                       {
                                          while(true)
                                          {
                                             this.§@"#§.dispose();
                                             addr324:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr321:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§"`§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§"`§);
                                                   addr316:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      addr317:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr304:
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§&>§);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.§&>§);
                                                            break loop15;
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      addr292:
                                                   }
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(§7!v§ == this)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §7!v§ = null;
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || _loc1_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(this.§^r§));
                                                                        if(_loc6_ || _loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop13:
                                                                                 for(; !_loc5_; continue loop17)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       addr268:
                                                                                       §§push(Boolean(this.§^r§.bitmapData));
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop11:
                                                                                                while(!(_loc5_ && this))
                                                                                                {
                                                                                                   this.§^r§.bitmapData.dispose();
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      this.§^r§.bitmapData = null;
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc6_ || _loc1_)
                                                                                                               {
                                                                                                                  addr216:
                                                                                                                  break loop10;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                addr297:
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          return;
                                                                                          addr229:
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              addr258:
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     addr245:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                         }
                                                         addr273:
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                §§goto(addr297);
                                             }
                                          }
                                          §§goto(addr316);
                                       }
                                    }
                                    §§goto(addr216);
                                    addr179:
                                    addr177:
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr273);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr179);
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
                     §§goto(addr180);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §4!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@"#§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§=k§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§@"#§)
                  {
                     this.§@!V§ = true;
                     loop2:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        if(_loc1_ || this)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              continue;
                           }
                           addr94:
                           while(true)
                           {
                              this.§@"#§.enableErrorChecking = this.§2&§;
                              loop5:
                              while(true)
                              {
                                 if(this.§@"#§.driverInfo.indexOf("Software") >= 0)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          this.§@!V§ = true;
                                          continue loop0;
                                       }
                                       continue loop5;
                                    }
                                    addr75:
                                 }
                                 addr34:
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        §§goto(addr75);
                     }
                     return;
                  }
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §&f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§7Y§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  while(true)
                  {
                     §§push(this.§&!P§);
                     loop2:
                     while(true)
                     {
                        §§push(null);
                        loop3:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              while(!(_loc2_ && _loc2_))
                              {
                                 this.§&!P§ = new this.§8!V§();
                                 while(true)
                                 {
                                 }
                              }
                              addr131:
                              return;
                              addr104:
                           }
                           while(true)
                           {
                              §§push(this.§&!P§);
                              if(_loc1_)
                              {
                                 §§push(null);
                                 if(_loc1_ || this)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           addr75:
                           throw new Error("Invalid root class: " + this.§8!V§);
                        }
                     }
                  }
                  addr99:
               }
               §§goto(addr131);
            }
         }
         §§goto(addr132);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         try
         {
            this.§@"#§.configureBackBuffer(§['§.width,§['§.height,this.§>!3§,false);
            if(_loc2_ || this)
            {
               §3!p§ = false;
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
         if(_loc3_)
         {
            §§push(§ !R§());
            loop0:
            for(; §§pop(); if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  §§goto(addr57);
               }
               addr84:
               return;
            })
            {
               loop1:
               while(true)
               {
                  §§push(§3!p§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(!this.§@"#§)
                           {
                              if(this.§^r§)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §3!p§ = false;
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.setCanvasSize(§['§.width,§['§.height);
                                             if(_loc4_ && _loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(false)
                                                      {
                                                         addr45:
                                                         break loop3;
                                                      }
                                                      break loop3;
                                                   }
                                                   break loop5;
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   this.configureBackBuffer();
                                                }
                                                addr100:
                                             }
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(§3!p§);
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          addr56:
                                       }
                                       else
                                       {
                                          if(!_loc3_)
                                          {
                                             addr114:
                                             if(_loc3_)
                                             {
                                                this.mStage3D.x = §['§.x;
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          this.setCanvasSize(§['§.width,§['§.height);
                                       }
                                       if(!_loc3_)
                                       {
                                          §§goto(addr84);
                                       }
                                       §§goto(addr45);
                                    }
                                    while(true)
                                    {
                                       this.mStage3D.y = §['§.y;
                                       §§goto(addr100);
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr114);
                        }
                     }
                     §§push(getTimer() / 1000);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - this.§<!j§);
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        this.§<!j§ = _loc1_;
                        loop10:
                        while(true)
                        {
                           §§push(this.§7Y§);
                           while(true)
                           {
                              §§pop().advanceTime(_loc2_);
                              addr345:
                              while(true)
                              {
                                 this.§!!6§.advanceTime(_loc2_);
                                 continue loop10;
                              }
                              addr289:
                              §§push(this.§7Y§);
                              if(_loc4_ && _loc1_)
                              {
                                 continue;
                              }
                              §§pop().render(this.§&>§,1);
                              loop21:
                              for(; !_loc4_; while(_loc3_ || _loc2_)
                              {
                                 this.§@_§();
                                 §§goto(addr236);
                                 §§goto(addr182);
                              })
                              {
                                 §§push(this.§&>§);
                                 loop22:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop().§6"$§();
                                          while(!_loc4_)
                                          {
                                             if(this.§@_§ != null)
                                             {
                                                continue loop21;
                                             }
                                             loop27:
                                             while(true)
                                             {
                                                §§push(this.§&>§);
                                                loop28:
                                                while(true)
                                                {
                                                   §§pop().finishRendering(this.§@"#§);
                                                   addr203:
                                                   loop29:
                                                   while(!_loc4_)
                                                   {
                                                      addr205:
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         continue loop28;
                                                      }
                                                      addr316:
                                                      addr236:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§@_§ = null;
                                                            break loop29;
                                                         }
                                                         break;
                                                         §§goto(addr205);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§&>§);
                                                         addr303:
                                                         while(true)
                                                         {
                                                            §§pop().§0!n§(this.§7Y§.stageWidth,this.§7Y§.stageHeight);
                                                            addr310:
                                                            while(true)
                                                            {
                                                               §§push(this.§&>§);
                                                               addr293:
                                                               while(true)
                                                               {
                                                                  §§pop().clear(this.§@"#§,this.§@=§,1);
                                                                  addr299:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&>§);
                                                                     break loop22;
                                                                  }
                                                               }
                                                            }
                                                            break loop22;
                                                         }
                                                      }
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop27;
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr299);
                                                }
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr196);
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr293);
                                    }
                                    break;
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    §§pop().nextFrame();
                                    if(!_loc4_)
                                    {
                                       addr182:
                                       if(!(_loc3_ || this))
                                       {
                                          continue loop21;
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr203);
                                 }
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§pop().§ N§(this.§@"#§,this.§'K§);
                                       break loop21;
                                    }
                                    break;
                                    §§goto(addr242);
                                 }
                                 addr242:
                                 §§goto(addr303);
                              }
                              while(_loc3_)
                              {
                                 §§goto(addr289);
                              }
                              §§goto(addr345);
                           }
                        }
                     }
                     §§goto(addr212);
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function set §7!]§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@_§ = param1;
         }
      }
      
      private function §4"'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            this.§#!T§.x = §['§.x;
            if(!(_loc5_ && _loc2_))
            {
               addr33:
               this.§#!T§.y = §['§.y;
            }
            var _loc1_:int = this.§#!T§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§#!T§.parent;
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc1_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr260:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     while(true)
                     {
                        §§push(!§§pop());
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
                                    addr265:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                       addr241:
                                       while(_loc4_)
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
                                    continue loop0;
                                 }
                                 loop23:
                                 while(_loc4_ || _loc2_)
                                 {
                                    this.§;"-§.addChild(this.§#!T§);
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(this.§&>§);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop17:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§&>§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr123:
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§pop().setCanvasSize(this.§8!L§,this.§0S§,§['§.width / this.§7Y§.stageWidth,§['§.height / this.§7Y§.stageHeight);
                                                                  if(false)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  addr268:
                                                                  _loc3_ = this.§&>§.canvas;
                                                                  if(_loc4_)
                                                                  {
                                                                     if(this.§^r§.bitmapData != _loc3_)
                                                                     {
                                                                        addr325:
                                                                        this.§^r§.bitmapData = _loc3_;
                                                                     }
                                                                     addr287:
                                                                     if(this.§;"-§.getChildIndex(this.§#!T§) > 0)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§;"-§.removeChild(this.§#!T§);
                                                                        }
                                                                        addr302:
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           this.§;"-§.addChildAt(this.§#!T§,0);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     addr330:
                                                                     return;
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               addr98:
                                                               if(!(_loc4_ || _loc1_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                                  §§push(this.§&>§);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§goto(addr123);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               else
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§;"-§.removeChild(this.§#!T§);
                                                                           addr199:
                                                                           while(true)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                        addr194:
                                                                     }
                                                                     else
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           §§push(Boolean(_loc2_));
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop12;
                                                                                 }
                                                                                 addr233:
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop17;
                                                         }
                                                         §§goto(addr181);
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                   §§goto(addr89);
                                                }
                                                break;
                                             }
                                             while(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr190);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr265);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr194);
         }
         §§goto(addr33);
      }
      
      private function §8g§(param1:String) : void
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
               loop1:
               for(; _loc5_ || _loc2_; if(_loc4_ && _loc3_)
               {
                  continue;
               },_loc2_.y = (this.§7Y§.stageHeight - _loc2_.height) / 2,loop7:
               while(true)
               {
                  _loc2_.background = true;
                  loop8:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        while(true)
                        {
                           _loc2_.backgroundColor = 4456448;
                           for(; !_loc4_; this.§2!u§.addChild(_loc2_),if(_loc5_)
                           {
                              continue loop8;
                           })
                           {
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr142);
                           }
                           continue loop7;
                        }
                        §§goto(addr58);
                        addr84:
                     }
                     break;
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        §§goto(addr51);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr137);
               })
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§7Y§.stageWidth * 0.75;
                     addr137:
                     while(true)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        loop4:
                        while(true)
                        {
                           _loc2_.text = param1;
                           while(true)
                           {
                              _loc2_.x = (this.§7Y§.stageWidth - _loc2_.width) / 2;
                              addr108:
                              while(_loc5_)
                              {
                                 continue loop1;
                              }
                              continue loop4;
                              addr51:
                              if(_loc5_ || this)
                              {
                                 return;
                                 addr58:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §4u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7!v§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§"r§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§"r§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc2_);
         
      }
      
      public function §1J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%$§ = param1;
         }
      }
      
      private function §^@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>!q§ = true;
            loop0:
            while(this.§^r§ == null)
            {
               loop2:
               while(true)
               {
                  if(!(_loc1_ || this))
                  {
                     continue loop0;
                  }
                  this.§2!u§.addChild(this.§^r§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
                  addr49:
                  while(true)
                  {
                     this.§^r§ = new Bitmap();
                     continue loop2;
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §,!f§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^@§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function §%;§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§>!i§);
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  §§push(this.§&>§);
                  loop24:
                  for(; !(_loc4_ && _loc3_); §§push(this.§&>§),if(!_loc5_)
                  {
                     continue;
                  },§§pop().clear(null,this.§@=§),§§goto(addr233))
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().setCanvasSize(this.§8!L§,this.§0S§,§['§.width / this.§7Y§.stageWidth,§['§.height / this.§7Y§.stageHeight);
                        loop26:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              addr286:
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue loop24;
                              }
                              loop20:
                              for(; _loc5_; §§goto(addr286))
                              {
                                 this.mStage3DEnabled = false;
                                 loop21:
                                 while(true)
                                 {
                                    this.§@"#§ = null;
                                    loop28:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§^@§();
                                                loop25:
                                                while(true)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!this.§@"#§)
                                                      {
                                                         this.§&>§ = new §=!W§();
                                                         while(_loc5_ || _loc2_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop22;
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               this.§"`§.§+_§ = this.§>'§;
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                                  dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              addr242:
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr384:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(Boolean(this.§@"#§));
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr374:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop22;
                                                                                                }
                                                                                                addr429:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr430:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr431);
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr375:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr359:
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    addr371:
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr315:
                                                                              while(true)
                                                                              {
                                                                                 this.§&>§ = new §0L§();
                                                                                 continue loop6;
                                                                              }
                                                                              addr315:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr301);
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                     addr233:
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     return;
                                                                     addr204:
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(this.§@"#§));
                                                                     addr417:
                                                                     addr431:
                                                                     while(true)
                                                                     {
                                                                        addr418:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr398:
                                                                              while(true)
                                                                              {
                                                                                 this.§4u§();
                                                                                 addr401:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§4!i§();
                                                                                    break loop20;
                                                                                 }
                                                                              }
                                                                              addr398:
                                                                           }
                                                                        }
                                                                     }
                                                                     addr431:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  this.§8g§("Fatal error: The application lost the device context!");
                                                                  this.stop();
                                                               }
                                                               continue loop28;
                                                            }
                                                         }
                                                         addr301:
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§&>§);
                                                         break;
                                                         addr454:
                                                      }
                                                      §§push(this.§@!V§);
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr345:
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                   addr446:
                                                   if(§§pop())
                                                   {
                                                      break loop21;
                                                   }
                                                   addr423:
                                                   while(true)
                                                   {
                                                      §§push(§1"&§.§;J§);
                                                      if(_loc5_)
                                                      {
                                                         addr428:
                                                         §§goto(addr429);
                                                         §§push(!§§pop());
                                                      }
                                                      §§goto(addr431);
                                                   }
                                                }
                                                addr323:
                                             }
                                             while(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr423);
                                                }
                                             }
                                             return;
                                          }
                                          if(!_loc4_)
                                          {
                                             §§goto(addr398);
                                          }
                                          break loop21;
                                          §§goto(addr398);
                                       }
                                       §§goto(addr401);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§&>§);
                                    break loop24;
                                 }
                              }
                              while(!(_loc4_ && this))
                              {
                                 this.§&f§();
                                 §§goto(addr384);
                              }
                              §§goto(addr422);
                           }
                           §§goto(addr366);
                        }
                     }
                     §§goto(addr446);
                  }
                  addr310:
                  while(true)
                  {
                     §§pop().dispose();
                     §§goto(addr450);
                  }
               }
               else
               {
                  §§push(this.§#?§);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        continue;
                     }
                     §§goto(addr345);
                  }
               }
               §§goto(addr431);
            }
         }
         §§goto(addr315);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§4u§();
         }
         §§push(getTimer() / 1000);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§<!j§);
            if(_loc5_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            §§push(this.§"r§);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  addr134:
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_ > 1);
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.render();
                                    addr116:
                                    while(true)
                                    {
                                    }
                                    addr84:
                                    if(!(_loc5_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!(_loc5_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    this.§4"'§();
                                    addr52:
                                    return;
                                    addr100:
                                 }
                              }
                              for(; this.§#!T§; §§goto(addr116))
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc4_ && param1)
                                    {
                                       continue;
                                    }
                                    §§goto(addr84);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr52);
                           }
                        }
                     }
                     addr136:
                  }
                  §§goto(addr112);
               }
               §§goto(addr136);
            }
            §§goto(addr134);
         }
         §§goto(addr52);
      }
      
      private function §=h§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4u§();
         }
         do
         {
            this.§7Y§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(!_loc3_);
         
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || this)
         {
            §§push(§§pop() / this.§8z§);
            if(_loc6_ || _loc3_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param2);
            if(_loc6_ || this)
            {
               §§push(§§pop() / this.§96§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               if(§"C§)
               {
                  §§push(this.§7Y§);
                  loop0:
                  while(true)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(this.§8z§);
                           loop1:
                           while(true)
                           {
                              §§pop().stageWidth = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§7Y§);
                                 loop3:
                                 for(; _loc6_; §§push(this.§7Y§),if(_loc5_)
                                 {
                                    continue;
                                 },§§goto(addr64))
                                 {
                                    §§push(this.§96§);
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                continue loop1;
                                             }
                                             addr163:
                                             if(_loc6_)
                                             {
                                                §§pop().stageHeight = §§pop();
                                                loop7:
                                                while(_loc6_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      this.§8!L§ = param1;
                                                      loop9:
                                                      while(true)
                                                      {
                                                         this.§0S§ = param2;
                                                         while(_loc6_)
                                                         {
                                                            continue loop3;
                                                            §§pop().dispatchEvent(new §+Y§(flash.events.Event.RESIZE,param1,param2));
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  break loop9;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr229:
                                                            while(true)
                                                            {
                                                               §§push(this.§7Y§);
                                                               addr231:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8z§);
                                                                  addr233:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           addr253:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              addr254:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stageWidth = §§pop();
                                                                                 addr255:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§7Y§);
                                                                                    addr200:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§96§);
                                                                                       addr202:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr252:
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr255);
                                                         addr216:
                                                         §§pop().stageHeight = §§pop();
                                                      }
                                                   }
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr202);
                                             if(!§§pop())
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr254);
                                          }
                                          else
                                          {
                                             addr155:
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§goto(addr163);
                                                §§push(§§pop() / §§pop());
                                             }
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr163);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr200);
                  }
               }
               §§goto(addr229);
            }
            §§goto(addr255);
         }
         §§goto(addr35);
      }
      
      public function §&!x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.setCanvasSize(this.§8z§,this.§96§);
         }
      }
      
      private function §&r§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_ || this)
         {
            §§push(this.§"r§);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_ || param1)
                        {
                           addr62:
                           §§push(this.§%$§);
                           if(_loc9_)
                           {
                              addr66:
                              §§push(!§§pop());
                              if(!(_loc10_ && param1))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || this)
                                    {
                                       return;
                                    }
                                 }
                              }
                              addr93:
                              if(§§pop())
                              {
                                 §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                 if(_loc9_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || _loc2_)
                                    {
                                       addr168:
                                       _loc3_ = Number(_loc6_.stageY);
                                       loop4:
                                       while(true)
                                       {
                                          _loc4_ = 0;
                                          loop2:
                                          while(true)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  this.§<!>§ = false;
                                                                  addr142:
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr150:
                                                            while(true)
                                                            {
                                                               this.§<!>§ = true;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   break;
                                                }
                                             }
                                             addr199:
                                             var _loc8_:* = param1.type;
                                             if(!_loc10_)
                                             {
                                                if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                {
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ && param1)
                                                      {
                                                         addr397:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr404:
                                                      §§push(2);
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         addr427:
                                                      }
                                                   }
                                                }
                                                else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc10_)
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                      addr450:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §§push(§"",§.§"!A§);
                                                            if(_loc10_)
                                                            {
                                                               addr346:
                                                               §§push(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr649);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr266:
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  addr269:
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr274);
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr330:
                                                                     _loc5_ = §§pop();
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§goto(addr276);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr359:
                                                                        }
                                                                        §§goto(addr649);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               addr274:
                                                               if(false)
                                                               {
                                                                  addr276:
                                                               }
                                                            }
                                                            addr649:
                                                            §§push(_loc2_);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < §['§.left);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr656:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr622:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >= §['§.right);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr655:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop13:
                                                                           while(_loc9_ || _loc3_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop15:
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() < §['§.top);
                                                                                             addr613:
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                addr614:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop20:
                                                                                                         while(_loc9_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               loop22:
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() >= §['§.bottom);
                                                                                                                  if(!(_loc10_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc10_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           if(!(_loc9_ || _loc2_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              loop26:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop27:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       loop28:
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §['§.x);
                                                                                                                                          loop29:
                                                                                                                                          for(; !_loc10_; if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             for(; _loc9_; this.§"`§.§5!?§(_loc4_,_loc5_,_loc2_,_loc3_),if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },§§goto(addr469))
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop27;
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop30:
                                                                                                                                             for(; _loc9_; if(!(_loc10_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                continue loop28;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §['§.y);
                                                                                                                                                         if(_loc9_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   continue loop15;
                                                                                                                                                   addr469:
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         break loop26;
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              return;
                                                                                                                              addr560:
                                                                                                                              addr478:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                        addr587:
                                                                                                                     }
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr656);
                                                                                 }
                                                                              }
                                                                              §§goto(addr613);
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr478);
                                                            §§goto(addr619);
                                                         case 1:
                                                            addr358:
                                                            _loc5_ = §"",§.§#D§;
                                                            addr357:
                                                            §§goto(addr359);
                                                         case 2:
                                                            §§goto(addr346);
                                                         case 3:
                                                            addr329:
                                                            §§goto(addr330);
                                                         case 4:
                                                            §§push(§"",§.§5!=§);
                                                            §§push(§"",§.§"!A§);
                                                            §§push(§"",§.§5!=§);
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     addr303:
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr649);
                                                                        }
                                                                        §§goto(addr619);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr357);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr329);
                                                               §§goto(addr560);
                                                            }
                                                            §§goto(addr303);
                                                         case 5:
                                                            §§push(this.§<!>§);
                                                            if(!_loc10_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(§"",§.§#D§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr249:
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr266);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr358);
                                                                           §§goto(addr359);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  §§goto(addr648);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§"",§.HOVER);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr614);
                                                         default:
                                                            §§goto(addr649);
                                                      }
                                                      continue loop34;
                                                   }
                                                   §§goto(addr404);
                                                   §§goto(addr427);
                                                }
                                                else
                                                {
                                                   if(TouchEvent.TOUCH_END === _loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr404);
                                                      }
                                                   }
                                                   else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         addr419:
                                                         §§push(3);
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§goto(addr427);
                                                         }
                                                      }
                                                   }
                                                   else if(MouseEvent.MOUSE_UP === _loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(4);
                                                         if(_loc10_)
                                                         {
                                                            addr445:
                                                         }
                                                      }
                                                   }
                                                   else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                   {
                                                      §§goto(addr450);
                                                      §§push(6);
                                                   }
                                                   §§goto(addr450);
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr445);
                                                   }
                                                }
                                                §§goto(addr450);
                                             }
                                             §§goto(addr419);
                                          }
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr168);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc9_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(Number(_loc7_.stageY));
                                    }
                                    §§goto(addr199);
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc4_ = _loc7_.touchPointID;
                                 }
                              }
                              §§goto(addr199);
                           }
                        }
                        §§goto(addr93);
                        §§push(param1 is MouseEvent);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr66);
         }
         §§goto(addr62);
      }
      
      private function get §-!§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §'!B§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(!(_loc5_ && param2))
         {
            if(param1 in this.§=k§)
            {
               if(_loc6_ || param3)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
         }
         if(this.§@"#§ != null)
         {
            (_loc4_ = this.§@"#§.createProgram()).upload(param2,param3);
            if(!(_loc5_ && param1))
            {
               this.§=k§[param1] = _loc4_;
            }
         }
      }
      
      public function §2!P§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§>p§(param1);
         if(!(_loc3_ && param1))
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  _loc2_.dispose();
                  addr74:
                  while(true)
                  {
                     delete this.§=k§[param1];
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc3_)
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
         §§goto(addr74);
      }
      
      public function §>p§(param1:String) : Program3D
      {
         return this.§=k§[param1] as Program3D;
      }
      
      public function §^-§(param1:String) : Boolean
      {
         return param1 in this.§=k§;
      }
      
      public function get §<![§() : Boolean
      {
         return this.§"r§;
      }
      
      public function get §"!U§() : §?![§
      {
         return this.§!!6§;
      }
      
      public function get §+_§() : Boolean
      {
         return this.§>'§;
      }
      
      public function set §+_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>'§ = param1;
            while(this.§@"#§)
            {
               if(_loc3_ || this)
               {
                  if(!_loc2_)
                  {
                     this.§"`§.§+_§ = param1;
                     addr61:
                     break;
                  }
                  continue;
               }
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2&§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2&§ = param1;
            while(this.§@"#§)
            {
               if(!(_loc3_ || param1))
               {
                  break;
               }
               addr66:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               addr62:
               this.§@"#§.enableErrorChecking = param1;
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get §"'§() : int
      {
         return this.§>!3§;
      }
      
      public function set §"'§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>!3§ = param1;
         }
         do
         {
            §4x§();
         }
         while(_loc2_ && this);
         
      }
      
      public function get §2!u§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!_loc2_)
         {
            if(this.§#!T§ == null)
            {
               if(!(_loc2_ && this))
               {
                  this.§#!T§ = new Sprite();
                  addr47:
                  _loc1_ = new ContextMenu();
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.hideBuiltInItems();
                  }
                  while(true)
                  {
                     while(true)
                     {
                        this.§#!T§.contextMenu = _loc1_;
                        do
                        {
                           this.§4"'§();
                        }
                        while(_loc2_ && _loc1_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(true)
                        {
                           return this.§#!T§;
                        }
                        addr92:
                     }
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr92);
         }
         §§goto(addr47);
      }
      
      public function get stage() : §6![§.Stage
      {
         return this.§7Y§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §#!x§() : flash.display.Stage
      {
         return this.§;"-§;
      }
      
      public function get §]!8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>!q§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
