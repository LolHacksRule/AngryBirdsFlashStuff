package §!!!§
{
   import §#!M§.§2!s§;
   import §3!J§.DisplayObject;
   import §3!J§.Stage;
   import §=!4§.Texture;
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
   import starling.events.§"!7§;
   import starling.events.§,g§;
   import starling.events.§<!"§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §6!l§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!t§:Rectangle;
      
      private static var §1^§:Boolean = true;
      
      private static var §!-§:Boolean;
      
      private static var §2J§:§6!l§;
      
      private static var §4!'§:Boolean;
      
      private static var §&!E§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "1.0";
         }
         do
         {
            §1^§ = true;
         }
         while(!_loc1_);
         
      }
      
      private var mStage3D:Stage3D;
      
      private var §<!s§:§3!J§.Stage;
      
      private var § !I§:Class;
      
      private var §`S§:§3!J§.DisplayObject;
      
      private var §0!e§:§2!s§;
      
      private var §-A§:Boolean;
      
      private var §8"'§:Boolean;
      
      private var §[!o§:§<@§;
      
      private var §+!?§:§"!7§;
      
      private var §"!9§:int;
      
      private var §6d§:Boolean;
      
      private var §<",§:Boolean;
      
      private var §%!,§:Number;
      
      private var §^9§:Boolean;
      
      private var §#"#§:flash.display.Stage;
      
      private var §@r§:Sprite;
      
      private var §%!§:Context3D;
      
      private var §]"'§:Dictionary;
      
      private var § P§:int;
      
      private var §'#§:Boolean;
      
      private var §6!V§:Number;
      
      private var §=c§:Number;
      
      private var §9!a§:Number;
      
      private var §^g§:Number;
      
      private var §4!g§:Number;
      
      private var §3R§:Number;
      
      private var §@H§:Function;
      
      private var §[#§:uint;
      
      private var §%5§:String;
      
      private var §@!U§:Bitmap;
      
      private var §99§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9"!§:Boolean = false;
      
      private var §3d§:Boolean = false;
      
      public function §6!l§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param1)
         {
            super();
            if(_loc9_ || param1)
            {
               if(param2 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop23:
                  while(true)
                  {
                     this.§6d§ = false;
                     loop5:
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || this)
                                 {
                                    this.§<",§ = false;
                                    loop6:
                                    while(true)
                                    {
                                       addr140:
                                       addr228:
                                       while(true)
                                       {
                                          this.§%!,§ = getTimer() / 1000;
                                          continue loop6;
                                       }
                                       addr287:
                                       loop2:
                                       while(!_loc10_)
                                       {
                                          if(!(_loc10_ && param1))
                                          {
                                             this.§0!e§ = new §2!s§();
                                             while(true)
                                             {
                                                this.§"!9§ = 0;
                                                loop4:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop23;
                                                      }
                                                      addr299:
                                                      while(true)
                                                      {
                                                         this.§3R§ = param2.stageHeight;
                                                         addr293:
                                                         while(true)
                                                         {
                                                            §0i§ = true;
                                                            break loop2;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                   addr161:
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         this.§]"'§ = new Dictionary();
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(_loc9_ || param3)
                                                         {
                                                            while(true)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr140);
                                                               }
                                                               else
                                                               {
                                                                  for each(_loc6_ in this.§8c§)
                                                                  {
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        param2.addEventListener(_loc6_,this.§]!'§,false,0,true);
                                                                     }
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!c§,false,0,true);
                                                                     while(true)
                                                                     {
                                                                        param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!c§,false,0,true);
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'"1§,false,1,true);
                                                                           addr430:
                                                                           while(true)
                                                                           {
                                                                              this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§?" §,false,1,true);
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr379);
                                                               }
                                                            }
                                                            addr138:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§ !I§ = param1;
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  addr269:
                                                                  §%!t§ = param3;
                                                               }
                                                            }
                                                            addr282:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§9!a§ = this.§6!V§;
                                                            addr311:
                                                            while(true)
                                                            {
                                                               this.§^g§ = this.§=c§;
                                                               addr305:
                                                               while(true)
                                                               {
                                                                  this.§4!g§ = param2.stageWidth;
                                                                  §§goto(addr299);
                                                               }
                                                            }
                                                         }
                                                         addr316:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.mStage3D = param4;
                                                      break loop4;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      this.§<!s§ = new §3!J§.Stage(param3.width,param3.height,param2.color);
                                                      break loop5;
                                                   }
                                                }
                                             }
                                             addr210:
                                          }
                                          else
                                          {
                                             §§goto(addr311);
                                          }
                                          §§goto(addr305);
                                       }
                                       while(true)
                                       {
                                          this.§1W§();
                                          §§goto(addr282);
                                          §§goto(addr293);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr278);
                                 }
                                 §§goto(addr269);
                              }
                              break;
                           }
                           while(true)
                           {
                              this.§+!?§ = new §"!7§(this.§<!s§);
                              §§goto(addr228);
                           }
                           addr242:
                        }
                        §§goto(addr210);
                        if(_loc10_ && param2)
                        {
                           continue;
                        }
                        §§goto(addr161);
                     }
                     loop29:
                     while(!(_loc10_ && param1))
                     {
                        while(true)
                        {
                           this.§#"#§ = param2;
                           §§goto(addr242);
                           continue loop29;
                        }
                     }
                     §§goto(addr293);
                  }
                  addr204:
               }
               else if(param1 == null)
               {
                  if(_loc9_ || param2)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr204);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || this)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr94:
                        if(param4 == null)
                        {
                           if(!(_loc10_ && this))
                           {
                              param4 = param2.stage3Ds[0];
                              addr110:
                              this.§6!V§ = param3.width;
                              if(!_loc10_)
                              {
                                 this.§=c§ = param3.height;
                                 §§goto(addr316);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr261);
                  }
                  §§goto(addr94);
               }
               §§goto(addr287);
            }
            §§goto(addr273);
         }
         §§goto(addr293);
      }
      
      public static function get §`k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§+J§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr56:
                     §§push(§+J§.§'#§);
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
            §§goto(addr56);
         }
         §§goto(addr60);
      }
      
      public static function §<E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§2J§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  §§push(§§pop());
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§2J§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§99§);
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    while(§§pop())
                                    {
                                    }
                                    break loop1;
                                    addr131:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr143:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§2J§);
                                       loop9:
                                       while(!_loc1_)
                                       {
                                          §§push(§§pop().§%!§ == null);
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(!(_loc2_ || §6!l§))
                                             {
                                                continue loop5;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc1_)
                                                {
                                                   break;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!§§pop())
                                                {
                                                   break loop1;
                                                }
                                                addr50:
                                                if(_loc2_ || §6!l§)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             §§goto(addr131);
                                          }
                                          while(!_loc1_)
                                          {
                                             §§pop();
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§push(§2J§);
                                                   if(!(_loc1_ && §6!l§))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                   continue loop9;
                                                }
                                                continue loop3;
                                             }
                                             §§push(§§pop().§%!§.driverInfo == "Disposed");
                                             continue loop8;
                                             if(_loc2_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr50);
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
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
               §§goto(addr150);
            }
         }
         §§goto(addr143);
      }
      
      private static function §+P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!-§ = true;
         }
      }
      
      public static function get §7!w§() : Rectangle
      {
         return §%!t§.clone();
      }
      
      public static function set §7!w§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §%!t§ = param1.clone();
         }
         do
         {
            §+P§();
         }
         while(!_loc2_);
         
      }
      
      public static function set §#N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §1^§ = param1;
         }
      }
      
      public static function get §#N§() : Boolean
      {
         return §1^§;
      }
      
      public static function get §+J§() : §6!l§
      {
         return §2J§;
      }
      
      public static function get §-f§() : §2!s§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§2J§);
            if(_loc1_ || _loc1_)
            {
               return !!§§pop() ? §2J§.§-f§ : null;
            }
         }
         §§goto(addr48);
      }
      
      public static function get §<!x§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §<!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §0i§() : Boolean
      {
         return §4!'§;
      }
      
      public static function set §0i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§2J§ == null)
            {
               do
               {
                  §4!'§ = param1;
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc3_)
               {
                  return;
                  addr56:
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr56);
      }
      
      public static function §9`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            if(§+J§)
            {
               if(!_loc6_)
               {
                  return Texture.§2!?§(§+J§.§%!§,param1,param2,param3);
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
         if(!_loc4_)
         {
            §§push(§2J§);
            if(!_loc4_)
            {
               if(§§pop().§%!§)
               {
                  if(!_loc4_)
                  {
                     §§push(§2J§);
                     if(!(_loc4_ && §6!l§))
                     {
                        §§pop().§%!§.drawToBitmapData(param1);
                        if(_loc4_ && _loc2_)
                        {
                           addr72:
                           _loc2_ = §2J§.§[!o§.canvas;
                           addr70:
                           if(_loc3_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr56:
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        addr65:
                        §§push(§§pop().§[!o§);
                        if(_loc3_)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr70);
                           }
                           addr99:
                           return;
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr56);
               }
               else
               {
                  §§push(§2J§);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr65);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get §8U§() : §3!J§.DisplayObject
      {
         return this.§`S§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[#§ = param1;
         }
      }
      
      public function get § !T§() : Number
      {
         return this.§6!V§;
      }
      
      public function get §^!n§() : Number
      {
         return this.§=c§;
      }
      
      public function § !J§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr89:
            while(true)
            {
               §§push(§§pop());
               addr90:
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
                        addr84:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           loop6:
                           while(true)
                           {
                              addr72:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = false;
                                    addr76:
                                    while(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc1_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                              }
                              try
                              {
                                 addr92:
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    §§pop().§§slot[1] = "flash.display3D.Context3DProfile";
                                    if(_loc3_)
                                    {
                                       addr237:
                                       var requestContext3D:Function = this.mStage3D.requestContext3D;
                                    }
                                    addr234:
                                    var moreThanOne:Boolean = requestContext3D.length > 1;
                                    addr235:
                                    addr242:
                                    addr229:
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       if(§§pop().§§slot[3])
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr202:
                                             §§push(§§newactivation());
                                             §§push(this.§3d§);
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   addr212:
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr222:
                                                      §§pop().§§slot[4] = "baselineConstrained";
                                                      addr224:
                                                      if(_loc3_)
                                                      {
                                                         addr161:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr174:
                                                            §§pop().§§slot[2](this.§%5§,profile);
                                                            addr178:
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr235);
                                                               }
                                                               return;
                                                               addr243:
                                                            }
                                                            §§goto(addr224);
                                                            addr172:
                                                            addr171:
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr222);
                                                §§push("baseline");
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc1_)
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(_loc3_)
                                             {
                                                addr120:
                                                §§push(§§pop().§§slot[2]);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(global);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§%5§);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§pop()(§§pop());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr120);
                              }
                              catch(e:Error)
                              {
                                 §4!a§("Context3D error: " + e.message);
                                 throw e;
                              }
                              §§goto(addr243);
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc3_ || this))
            {
               continue;
            }
            §§push(null);
            if(!(_loc4_ && _loc3_))
            {
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && this))
                  {
                     §§pop().§§slot[4] = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        if(false)
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr90);
               }
               §§goto(addr89);
            }
            §§goto(addr84);
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§9"!§ = true;
            loop0:
            while(true)
            {
               this.§#"#§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!c§,false);
               while(true)
               {
                  this.§#"#§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!c§,false);
                  addr62:
                  if(!(_loc5_ && _loc1_))
                  {
                     this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?" §,false);
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           while(true)
                           {
                              addr51:
                              addr94:
                              while(true)
                              {
                                 this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'"1§,false);
                                 continue loop4;
                              }
                              var _loc3_:int = 0;
                              var _loc4_:* = this.§8c§;
                              loop5:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                       if(!(_loc5_ && this))
                                       {
                                          this.§#"#§.removeEventListener(_loc1_,this.§]!'§,false);
                                       }
                                       continue;
                                    }
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             _loc3_ = 0;
                                             if(!_loc5_)
                                             {
                                                _loc4_ = this.§]"'§;
                                                addr157:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                   break loop5;
                                                }
                                                addr187:
                                             }
                                             if(_loc6_ || this)
                                             {
                                                if(this.§%!§)
                                                {
                                                   while(true)
                                                   {
                                                      this.§%!§.dispose();
                                                      addr339:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr336:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§+!?§);
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§+!?§);
                                                            addr331:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               addr332:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         addr319:
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(this.§[!o§);
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[!o§);
                                                                  addr302:
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     addr303:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr336);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr312:
                                                                           }
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     this.§@!U§.bitmapData.dispose();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§2J§ == this)
                                                               {
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr269);
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                   }
                                                   §§goto(addr331);
                                                }
                                                addr198:
                                             }
                                             §§goto(addr339);
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr157);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                    if(!(_loc5_ && this))
                                    {
                                       _loc2_.dispose();
                                    }
                                    continue;
                                 }
                                 §§goto(addr157);
                              }
                           }
                           addr79:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §?7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%!§ = this.mStage3D.context3D;
            while(true)
            {
               this.§]"'§ = new Dictionary();
               loop1:
               while(!(_loc1_ && this))
               {
                  if(!this.§%!§)
                  {
                     this.§'#§ = true;
                     loop2:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                        loop5:
                        while(true)
                        {
                           this.§'#§ = true;
                           addr77:
                           addr42:
                           loop4:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr86:
                                 addr86:
                                 while(true)
                                 {
                                    this.§%!§.enableErrorChecking = this.§<",§;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(this.§%!§.driverInfo.indexOf("Software") < 0)
                                    {
                                       break loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §&M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§<!s§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren > 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  addr118:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  §§push(this.§`S§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc2_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              this.§`S§ = new this.§ !I§();
                           }
                           while(true)
                           {
                              addr66:
                              if(_loc2_ || _loc2_)
                              {
                                 throw new Error("Invalid root class: " + this.§ !I§);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§`S§);
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!_loc1_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       addr80:
                                       break;
                                    }
                                    §§goto(addr66);
                                 }
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        §§push(this.§<!s§);
                        if(!_loc1_)
                        {
                           §§pop().addChild(this.§`S§);
                           if(_loc1_ && _loc2_)
                           {
                              §§goto(addr80);
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr118);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         try
         {
            this.§%!§.configureBackBuffer(§%!t§.width,§%!t§.height,this.§"!9§,false);
            if(_loc2_)
            {
               §!-§ = false;
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
            §§push(§<E§());
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(§!-§);
                  loop2:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(!this.§%!§)
                              {
                                 if(this.§@!U§)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr84:
                                             this.setCanvasSize(§%!t§.width,§%!t§.height);
                                             §§goto(addr91);
                                          }
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §!-§ = false;
                                             while(true)
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          else
                                          {
                                             addr134:
                                             this.mStage3D.x = §%!t§.x;
                                          }
                                       }
                                       if(_loc4_ && _loc2_)
                                       {
                                          break loop0;
                                       }
                                       this.mStage3D.y = §%!t§.y;
                                       while(true)
                                       {
                                          this.configureBackBuffer();
                                          break loop4;
                                       }
                                       if(_loc4_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(_loc3_ || _loc1_)
                                       {
                                          continue loop3;
                                       }
                                       addr91:
                                       if(_loc3_)
                                       {
                                          addr56:
                                          break loop2;
                                       }
                                       §§goto(addr104);
                                    }
                                    while(_loc4_ && this)
                                    {
                                       §§goto(addr125);
                                    }
                                    §§push(§!-§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr84);
                                       }
                                       addr104:
                                    }
                                    continue loop2;
                                    return;
                                 }
                                 break loop2;
                              }
                              §§goto(addr134);
                           }
                           addr131:
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
                  if(!_loc4_)
                  {
                     §§push(§§pop() - this.§%!,§);
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_)
                  {
                     this.§%!,§ = _loc1_;
                     addr363:
                     this.§<!s§.advanceTime(_loc2_);
                     addr369:
                  }
                  addr365:
                  this.§0!e§.advanceTime(_loc2_);
                  addr342:
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§+!?§.advanceTime(_loc2_);
                     addr316:
                     this.§[!o§.§&!n§(this.§<!s§.stageWidth,this.§<!s§.stageHeight);
                     addr323:
                     if(!(_loc4_ && _loc1_))
                     {
                        addr299:
                        this.§[!o§.clear(this.§%!§,this.§[#§,1);
                        if(_loc3_ || _loc1_)
                        {
                           addr283:
                           this.§[!o§.§"" §(this.§%!§,this.§ P§);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(this.§<!s§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().render(this.§[!o§,1);
                                 addr252:
                                 addr279:
                                 §§push(this.§[!o§);
                                 if(_loc3_)
                                 {
                                    §§pop().§6!s§();
                                    addr255:
                                    if(_loc3_ || _loc1_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(this.§@H§ != null)
                                          {
                                             addr242:
                                             this.§@H§();
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§@H§ = null;
                                                   addr236:
                                                   §§push(this.§[!o§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop().finishRendering(this.§%!§);
                                                         addr231:
                                                         §§push(this.§[!o§);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§pop().nextFrame();
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr255);
                                                                           }
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr363);
                           }
                           §§goto(addr299);
                        }
                        §§goto(addr365);
                     }
                     addr336:
                     §§goto(addr336);
                  }
                  §§goto(addr369);
               }
            }
            return;
         }
         §§goto(addr131);
      }
      
      public function set §6!z§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@H§ = param1;
         }
      }
      
      private function §&q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc2_))
         {
            this.§@r§.x = §%!t§.x;
            if(_loc5_)
            {
               this.§@r§.y = §%!t§.y;
            }
         }
         var _loc1_:int = this.§@r§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@r§.parent;
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               addr251:
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                    loop7:
                                    while(_loc5_ || _loc2_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc4_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop23:
                                                      while(true)
                                                      {
                                                         this.§#"#§.removeChild(this.§@r§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(!(_loc5_ || _loc1_))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§[!o§);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop17:
                                                                        while(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§[!o§);
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop().canvas));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§push(this.§[!o§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                addr259:
                                                                                                _loc3_ = §§pop().canvas;
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(this.§@!U§.bitmapData != _loc3_)
                                                                                                   {
                                                                                                      addr331:
                                                                                                      this.§@!U§.bitmapData = _loc3_;
                                                                                                   }
                                                                                                   addr295:
                                                                                                   if(this.§#"#§.getChildIndex(this.§@r§) > 0)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         this.§#"#§.removeChild(this.§@r§);
                                                                                                      }
                                                                                                      this.§#"#§.addChildAt(this.§@r§,0);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr295);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      addr315:
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                             §§push(this.§[!o§);
                                                                                          }
                                                                                          return;
                                                                                          addr77:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr221:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr222:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(Boolean(_loc2_));
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr248:
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop15;
                                                                                                addr243:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§#"#§.addChild(this.§@r§);
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc5_ || _loc2_))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§pop().setCanvasSize(this.§9!a§,this.§^g§,§%!t§.width / this.§<!s§.stageWidth,§%!t§.height / this.§<!s§.stageHeight);
                                                                                 §§goto(addr116);
                                                                              }
                                                                           }
                                                                           §§goto(addr77);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                      }
                                                      addr153:
                                                   }
                                                   §§goto(addr122);
                                                }
                                                addr151:
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                       continue loop2;
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
                              §§goto(addr243);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      private function §4!a§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(true)
               {
                  _loc2_.wordWrap = true;
                  loop2:
                  while(!(_loc5_ && this))
                  {
                     _loc2_.width = this.§<!s§.stageWidth * 0.75;
                     while(true)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        loop4:
                        while(true)
                        {
                           _loc2_.text = param1;
                           loop5:
                           while(true)
                           {
                              _loc2_.x = (this.§<!s§.stageWidth - _loc2_.width) / 2;
                              loop6:
                              for(; _loc4_; if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              })
                              {
                                 _loc2_.y = (this.§<!s§.stageHeight - _loc2_.height) / 2;
                                 loop7:
                                 while(true)
                                 {
                                    _loc2_.background = true;
                                    addr95:
                                    while(true)
                                    {
                                       _loc2_.backgroundColor = 4456448;
                                       continue loop7;
                                       addr46:
                                       if(!(_loc5_ && param1))
                                       {
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr69);
                                 }
                              }
                              continue loop2;
                           }
                           if(!(_loc5_ && _loc3_))
                           {
                              addr69:
                           }
                           continue;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §1W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2J§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-A§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-A§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §36§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§8"'§ = param1;
         }
      }
      
      private function §>x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§99§ = true;
            loop0:
            while(this.§@!U§ == null)
            {
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§@!U§ = new Bitmap();
                     do
                     {
                        this.§9!n§.addChild(this.§@!U§);
                     }
                     while(_loc1_);
                     
                     if(!(_loc1_ && _loc2_))
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      private function §?" §(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§>x§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc3_);
         
      }
      
      private function §'"1§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(this.§9"!§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     return;
                  }
                  while(true)
                  {
                     this.§?7§();
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           this.§&M§();
                           loop18:
                           for(; !_loc5_; while(!(_loc5_ && _loc3_))
                           {
                              this.mStage3DEnabled = false;
                              §§goto(addr410);
                           })
                           {
                              §§push(Boolean(this.§%!§));
                              if(!(_loc5_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop33:
                                             while(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr431:
                                                   loop34:
                                                   while(true)
                                                   {
                                                      §§push(this.§'#§);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop33;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      addr384:
                                                      while(!(_loc5_ && _loc2_))
                                                      {
                                                         addr391:
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               addr399:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(!this.§%!§)
                                                                     {
                                                                        this.§[!o§ = new §;",§();
                                                                        while(!(_loc5_ && this))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(this.§[!o§);
                                                                              loop26:
                                                                              for(; _loc4_ || this; §§push(this.§[!o§),if(_loc5_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              },if(!_loc5_)
                                                                              {
                                                                                 §§pop().clear(null,this.§[#§);
                                                                                 §§goto(addr261);
                                                                              },while(true)
                                                                              {
                                                                                 §§pop().dispose();
                                                                                 §§goto(addr499);
                                                                              },addr498:)
                                                                              {
                                                                                 §§pop().setCanvasSize(this.§9!a§,this.§^g§,§%!t§.width / this.§<!s§.stageWidth,§%!t§.height / this.§<!s§.stageHeight);
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    addr341:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[!o§ = new §<@§();
                                                                                       addr345:
                                                                                       while(true)
                                                                                       {
                                                                                          addr212:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§+!?§.§><§ = this.§6d§;
                                                                                             continue loop27;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr474:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§6!l§.§0i§);
                                                                                       addr477:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          addr478:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr479:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   break loop33;
                                                                                                }
                                                                                                §§goto(addr466);
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr498);
                                                                                    }
                                                                                    addr496:
                                                                                 }
                                                                                 §§goto(addr474);
                                                                                 §§goto(addr288);
                                                                              }
                                                                              addr288:
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           continue loop34;
                                                                           §§goto(addr327);
                                                                        }
                                                                        addr327:
                                                                        continue loop34;
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                               }
                                                            }
                                                            addr398:
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr468);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§1W§();
                                                            §§goto(addr447);
                                                         }
                                                         addr444:
                                                      }
                                                      §§goto(addr466);
                                                      §§goto(addr384);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr481);
                                             }
                                             addr428:
                                             addr480:
                                          }
                                          §§goto(addr398);
                                       }
                                       addr427:
                                    }
                                    §§goto(addr479);
                                 }
                                 §§goto(addr478);
                              }
                              §§goto(addr428);
                           }
                           while(true)
                           {
                              §§goto(addr444);
                           }
                           addr457:
                        }
                        break loop0;
                        if(!(_loc5_ && _loc3_))
                        {
                           return;
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§3d§);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc4_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr136:
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       addr90:
                                       §§push(Boolean(this.mStage3D.context3D));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop();
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr430);
                                             }
                                             else
                                             {
                                                addr69:
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      this.§3d§ = true;
                                                      if(!_loc5_)
                                                      {
                                                         addr35:
                                                         this.§ !J§();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr410);
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   §§goto(addr457);
                                                }
                                                else
                                                {
                                                   addr154:
                                                   var _loc2_:*;
                                                   §§push((_loc2_ = §§findproperty(§&!E§)).§&!E§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      _loc2_.§&!E§ = _loc3_;
                                                   }
                                                   if(_loc4_ || this)
                                                   {
                                                      this.§ P§ = §&!E§;
                                                      §§goto(addr503);
                                                   }
                                                   §§goto(addr431);
                                                }
                                             }
                                             §§goto(addr431);
                                          }
                                          break;
                                       }
                                       §§goto(addr427);
                                    }
                                    break;
                                 }
                                 §§goto(addr399);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr479);
                        }
                        §§goto(addr480);
                     }
                     §§goto(addr383);
                  }
                  §§goto(addr136);
               }
               §§goto(addr431);
            }
            return;
            addr461:
         }
         else if(false)
         {
            §§goto(addr35);
         }
         else
         {
            §§goto(addr154);
         }
         §§goto(addr154);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§1W§();
         }
         §§push(getTimer() / 1000);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || this)
         {
            §§push(§§pop() - this.§%!,§);
            if(_loc5_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this.§-A§);
               if(_loc5_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_ || _loc3_)
                  {
                     addr129:
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_ > 1);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(this.§@r§)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§goto(addr82);
                                          }
                                          §§goto(addr91);
                                       }
                                       break;
                                       §§goto(addr106);
                                    }
                                    addr67:
                                 }
                                 loop2:
                                 while(_loc5_)
                                 {
                                    this.render();
                                    while(true)
                                    {
                                       addr82:
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          this.§&q§();
                                          addr91:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§goto(addr67);
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                                 return;
                              }
                           }
                        }
                        addr131:
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr131);
               }
               §§goto(addr129);
            }
            §§goto(addr89);
         }
         §§goto(addr52);
      }
      
      private function §%!c§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1W§();
         }
         do
         {
            this.§<!s§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param2)
         {
            §§push(§§pop() / this.§6!V§);
            if(_loc5_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         if(_loc5_)
         {
            §§push(§§pop() / this.§=c§);
            if(_loc5_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            if(!§#N§)
            {
               if(!_loc6_)
               {
                  §§push(this.§<!s§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§6!V§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param2)
                        {
                           addr231:
                           §§push(§§pop() * §§pop());
                           while(true)
                           {
                              §§push(_loc4_);
                           }
                           addr231:
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop2:
                           while(true)
                           {
                              §§pop().stageWidth = §§pop();
                              addr234:
                              loop4:
                              while(true)
                              {
                                 §§push(this.§<!s§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§=c§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().stageHeight = §§pop();
                                       addr196:
                                       loop15:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             this.§9!a§ = param1;
                                             loop13:
                                             while(true)
                                             {
                                                this.§^g§ = param2;
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr93:
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr102:
                                                         §§push(this.§<!s§);
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop0;
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(this.§=c§);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           addr162:
                                                                           §§push(§§pop() / _loc3_);
                                                                        }
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().stageHeight = §§pop();
                                                                        while(true)
                                                                        {
                                                                           continue loop12;
                                                                           §§goto(addr93);
                                                                        }
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr231);
                                                                  }
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(this.§6!V§);
                                                                     break loop10;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               addr177:
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().stageWidth = §§pop();
                                                            §§goto(addr163);
                                                         }
                                                         addr121:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr121);
                                                         §§push(this.§<!s§);
                                                      }
                                                   }
                                                   §§goto(addr171);
                                                }
                                                continue loop15;
                                             }
                                          }
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr231);
                  }
               }
               §§goto(addr234);
            }
            else
            {
               §§push(this.§<!s§);
            }
            §§goto(addr177);
         }
         §§goto(addr196);
      }
      
      public function §[!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setCanvasSize(this.§6!V§,this.§=c§);
         }
      }
      
      private function §]!'§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this.§-A§);
            if(_loc9_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc9_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        addr59:
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(this.§8"'§);
                           if(_loc9_)
                           {
                              addr66:
                              §§push(!§§pop());
                              if(_loc9_ || this)
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       return;
                                    }
                                    addr84:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc9_ || _loc2_)
                                       {
                                          addr158:
                                          _loc3_ = Number(_loc6_.stageY);
                                          do
                                          {
                                             _loc4_ = 0;
                                             do
                                             {
                                                while(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            this.§^9§ = false;
                                                         }
                                                         else
                                                         {
                                                            var _loc8_:* = param1.type;
                                                            addr160:
                                                            if(_loc9_)
                                                            {
                                                               if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr389:
                                                                     §§push(0);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr402:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr419:
                                                                     §§push(3);
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        addr437:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr402);
                                                                        }
                                                                        addr450:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push(§,g§.§,!4§);
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr305:
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() - §%!t§.y);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            addr515:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc9_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  loop7:
                                                                                                                  for(; !(_loc10_ && this); this.§+!?§.§"!+§(_loc4_,_loc5_,_loc2_,_loc3_),if(_loc10_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     return;
                                                                                                                     addr476:
                                                                                                                  },§§goto(addr568))
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr610:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              loop26:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= §%!t§.right);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop14:
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                loop15:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr653:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      addr613:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() < §%!t§.top);
                                                                                                                                                         loop18:
                                                                                                                                                         while(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               while(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ || _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           addr574:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() >= §%!t§.bottom);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc9_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr658:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       break loop14;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr658:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr623:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 addr544:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §%!t§.x);
                                                                                                                                                                                    addr547:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr548:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                                                                          break loop7;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr568:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop15;
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr660:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop15;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr618);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr631);
                                                                                                                        }
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           addr554:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §,g§.§,!4§);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr568);
                                                                                                                                    }
                                                                                                                                    §§goto(addr623);
                                                                                                                                 }
                                                                                                                                 §§goto(addr584);
                                                                                                                              }
                                                                                                                              §§goto(addr598);
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr571:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr571:
                                                                                                                     }
                                                                                                                     §§goto(addr542);
                                                                                                                  }
                                                                                                                  while(!_loc10_)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  §§goto(addr653);
                                                                                                               }
                                                                                                               §§goto(addr574);
                                                                                                            }
                                                                                                            §§goto(addr544);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr655:
                                                                                                         }
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                      §§goto(addr613);
                                                                                                   }
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr548);
                                                                                          }
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr333:
                                                                                       _loc5_ = §§pop();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr300:
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 §§goto(addr476);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr268:
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr271:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       addr279:
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   addr298:
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                §§goto(addr610);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr371:
                                                                                                _loc5_ = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr305);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                           case 1:
                                                                              addr370:
                                                                              §§goto(addr371);
                                                                           case 2:
                                                                              §§push(§,g§.§"=§);
                                                                              §§push(§,g§.§&!]§);
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    addr357:
                                                                                    _loc5_ = §§pop();
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr571);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr370);
                                                                                 }
                                                                              }
                                                                              §§goto(addr554);
                                                                           case 3:
                                                                              addr332:
                                                                              §§goto(addr333);
                                                                           case 4:
                                                                              §§goto(addr305);
                                                                           case 5:
                                                                              §§push(§,g§.§,!4§);
                                                                              §§push(§,g§.§&!]§);
                                                                              §§push(this.§^9§);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       §§push(§,g§.§"=§);
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§goto(addr271);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§,g§.HOVER);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr658);
                                                                        }
                                                                        §§goto(addr655);
                                                                        §§push(_loc2_);
                                                                     }
                                                                  }
                                                                  else if(TouchEvent.TOUCH_END === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(2);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr445:
                                                                        }
                                                                     }
                                                                  }
                                                                  else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr419);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr434:
                                                                        §§push(4);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr445);
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(MouseEvent.MOUSE_UP === _loc8_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr434);
                                                                        }
                                                                     }
                                                                     else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                                     {
                                                                        §§goto(addr450);
                                                                        §§push(6);
                                                                     }
                                                                     §§goto(addr450);
                                                                  }
                                                                  §§goto(addr450);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr445);
                                                                  }
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr389);
                                                            addr160:
                                                            addr150:
                                                            addr194:
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                             while(!(_loc9_ || _loc2_));
                                             
                                          }
                                          while(_loc10_);
                                          
                                          this.§^9§ = true;
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    addr80:
                                    §§push(param1 is MouseEvent);
                                 }
                                 §§goto(addr84);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr84);
                           }
                           else
                           {
                              §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                              if(_loc9_ || param1)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc9_ || param1)
                                 {
                                    addr187:
                                    _loc3_ = Number(_loc7_.stageY);
                                    if(_loc10_)
                                    {
                                    }
                                    §§goto(addr194);
                                 }
                                 _loc4_ = _loc7_.touchPointID;
                                 §§goto(addr160);
                              }
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr66);
            }
            §§goto(addr59);
         }
         §§goto(addr80);
      }
      
      private function get §8c§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §]" §(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!_loc6_)
         {
            if(param1 in this.§]"'§)
            {
               if(!(_loc6_ && param2))
               {
                  §§goto(addr43);
               }
               else
               {
                  (_loc4_ = this.§%!§.createProgram()).upload(param2,param3);
                  addr53:
                  if(_loc5_)
                  {
                     this.§]"'§[param1] = _loc4_;
                  }
               }
            }
            else if(this.§%!§ != null)
            {
               §§goto(addr53);
            }
            return;
         }
         addr43:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §0<§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§=H§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  _loc2_.dispose();
                  addr69:
                  while(true)
                  {
                     delete this.§]"'§[param1];
                     if(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr69);
      }
      
      public function §=H§(param1:String) : Program3D
      {
         return this.§]"'§[param1] as Program3D;
      }
      
      public function §?R§(param1:String) : Boolean
      {
         return param1 in this.§]"'§;
      }
      
      public function get §@!1§() : Boolean
      {
         return this.§-A§;
      }
      
      public function get §-f§() : §2!s§
      {
         return this.§0!e§;
      }
      
      public function get §><§() : Boolean
      {
         return this.§6d§;
      }
      
      public function set §><§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6d§ = param1;
            while(this.§%!§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§+!?§.§><§ = param1;
               }
               if(!(_loc3_ && this))
               {
                  addr65:
                  break;
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<",§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§<",§ = param1;
            while(this.§%!§)
            {
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               addr71:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               addr67:
               this.§%!§.enableErrorChecking = param1;
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function get §6!]§() : int
      {
         return this.§"!9§;
      }
      
      public function set §6!]§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"!9§ = param1;
            do
            {
               §+P§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §9!n§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || this)
         {
            if(this.§@r§ == null)
            {
               if(!_loc3_)
               {
                  this.§@r§ = new Sprite();
                  addr46:
                  _loc1_ = new ContextMenu();
                  if(!(_loc3_ && this))
                  {
                     _loc1_.hideBuiltInItems();
                  }
                  while(true)
                  {
                     while(true)
                     {
                        this.§@r§.contextMenu = _loc1_;
                        do
                        {
                           this.§&q§();
                        }
                        while(_loc3_ && this);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(true)
                        {
                           return this.§@r§;
                        }
                        addr91:
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr91);
         }
         §§goto(addr46);
      }
      
      public function get stage() : §3!J§.Stage
      {
         return this.§<!s§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §&!Q§() : flash.display.Stage
      {
         return this.§#"#§;
      }
      
      public function get §[! §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§99§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
