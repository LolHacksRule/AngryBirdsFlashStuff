package §@!X§
{
   import §,%§.§]G§;
   import §-!`§.DisplayObject;
   import §-!`§.Stage;
   import §0!-§.Texture;
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
   import starling.events.§21§;
   import starling.events.§<A§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^!4§;
   
   public class §7j§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §-!>§:§7j§;
      
      private static var §=! §:Boolean;
      
      private static var §61§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §"$§:§-!`§.Stage;
      
      private var §2!m§:Class;
      
      private var §,<§:§-!`§.DisplayObject;
      
      private var §6!l§:§]G§;
      
      private var § !X§:Boolean;
      
      private var §,v§:Boolean;
      
      private var §^!2§:§"W§;
      
      private var §!!;§:§^!4§;
      
      private var §'t§:int;
      
      private var §1!Y§:Boolean;
      
      private var §2!M§:Boolean;
      
      private var §8!F§:Number;
      
      private var §?t§:Rectangle;
      
      private var §9?§:Boolean;
      
      private var §4!O§:flash.display.Stage;
      
      private var §>!b§:Sprite;
      
      private var §3;§:Context3D;
      
      private var §6!5§:Dictionary;
      
      private var §+#§:int;
      
      private var §-!H§:Boolean;
      
      private var § !?§:Number;
      
      private var §^-§:Number;
      
      private var §7!^§:Number;
      
      private var §+![§:Number;
      
      private var §true§:Number;
      
      private var §`e§:Number;
      
      private var §+!,§:Function;
      
      private var §+h§:uint;
      
      private var § !B§:String;
      
      private var §5!a§:Bitmap;
      
      private var §@!W§:Boolean = false;
      
      private var §`!v§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;F§:Boolean = false;
      
      public function §7j§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!_loc10_)
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
               }
               else
               {
                  addr41:
                  if(param1 == null)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  if(param3 == null)
                  {
                     param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                  }
                  if(param4 == null)
                  {
                     if(!_loc10_)
                     {
                        param4 = param2.stage3Ds[0];
                        addr74:
                        this.§ !?§ = param3.width;
                        this.§^-§ = param3.height;
                        this.§7!^§ = this.§ !?§;
                        if(!(_loc10_ && this))
                        {
                           this.§+![§ = this.§^-§;
                           if(_loc9_)
                           {
                              this.§true§ = param2.stageWidth;
                              if(!_loc10_)
                              {
                                 this.§`e§ = param2.stageHeight;
                                 if(!(_loc10_ && this))
                                 {
                                    §>!Z§ = true;
                                    if(_loc9_ || param2)
                                    {
                                       this.§7!C§();
                                       if(!_loc10_)
                                       {
                                          this.§2!m§ = param1;
                                          if(_loc10_ && param2)
                                          {
                                          }
                                          addr194:
                                          this.§2!M§ = false;
                                          if(!(_loc10_ && this))
                                          {
                                             addr204:
                                             this.§8!F§ = getTimer() / 1000;
                                          }
                                          §§goto(addr210);
                                       }
                                       addr210:
                                       this.§6!5§ = new Dictionary();
                                       §§goto(addr214);
                                    }
                                    this.§?t§ = param3;
                                    this.mStage3D = param4;
                                 }
                                 this.§"$§ = new §-!`§.Stage(param3.width,param3.height,param2.color);
                                 if(_loc9_)
                                 {
                                    this.§4!O§ = param2;
                                    if(!(_loc10_ && param2))
                                    {
                                       addr178:
                                       this.§!!;§ = new §^!4§(this.§"$§);
                                       addr184:
                                       this.§6!l§ = new §]G§();
                                       this.§'t§ = 0;
                                       this.§1!Y§ = false;
                                       §§goto(addr194);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr178);
                              }
                           }
                           addr214:
                           for each(_loc6_ in this.§>5§)
                           {
                              if(!_loc10_)
                              {
                                 param2.addEventListener(_loc6_,this.§6!j§,false,0,true);
                              }
                           }
                           param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
                           param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
                           if(_loc9_)
                           {
                              this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=!S§,false,1,true);
                              this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§&!C§,false,1,true);
                              this.mStage3D.visible = false;
                           }
                           this.§?A§(true);
                           this.§+h§ = param2.color;
                           this.§ !B§ = param5;
                           return;
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr74);
               }
               §§goto(addr204);
            }
            §§goto(addr41);
         }
         §§goto(addr194);
      }
      
      public static function get §?!X§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§else§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr41:
                     §§push(§else§.§-!H§);
                     if(_loc2_ || §7j§)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr50);
            }
         }
         §§goto(addr41);
      }
      
      public static function §!m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§-!>§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§-!>§);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(§§pop().§@!W§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && §7j§))
                                    {
                                       addr78:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr97:
                                             §§push(§-!>§);
                                             if(_loc1_)
                                             {
                                                addr103:
                                                §§push(§§pop().§3;§ != null);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr112:
                                                   if(§§pop())
                                                   {
                                                   }
                                                   §§goto(addr122);
                                                }
                                                §§pop();
                                                addr115:
                                                §§push(§-!>§.§3;§.driverInfo == "Disposed");
                                                if(!_loc2_)
                                                {
                                                   addr122:
                                                   return §§pop();
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr122);
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr78);
            }
            §§goto(addr103);
         }
         §§goto(addr97);
      }
      
      public static function get §else§() : §7j§
      {
         return §-!>§;
      }
      
      public static function get §&t§() : §]G§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §7j§)
         {
            §§push(§-!>§);
            if(!(_loc2_ && _loc2_))
            {
               return !!§§pop() ? §-!>§.§&t§ : null;
            }
         }
         §§goto(addr43);
      }
      
      public static function get §3![§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §3![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §>!Z§() : Boolean
      {
         return §=! §;
      }
      
      public static function set §>!Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§-!>§ != null)
            {
               if(_loc3_)
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
            }
         }
         §=! § = param1;
      }
      
      public static function §[I§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(§else§)
            {
               if(_loc5_ || param3)
               {
                  §§goto(addr38);
               }
            }
            return null;
         }
         addr38:
         return Texture.§&!`§(§else§.§3;§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || param1)
         {
            §§push(§-!>§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop().§3;§)
               {
                  if(!_loc4_)
                  {
                     §§push(§-!>§);
                     if(!(_loc4_ && param1))
                     {
                        §§pop().§3;§.drawToBitmapData(param1);
                        if(_loc4_)
                        {
                           addr87:
                           _loc2_ = §-!>§.§^!2§.canvas;
                           addr86:
                           if(!_loc4_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr61:
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§push(§-!>§);
                  if(!(_loc4_ && param1))
                  {
                     addr80:
                     §§push(§§pop().§^!2§);
                     if(_loc3_)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr86);
                        }
                        addr104:
                        return;
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr80);
         }
         §§goto(addr61);
      }
      
      public function get §@3§() : §-!`§.DisplayObject
      {
         return this.§,<§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+h§ = param1;
         }
      }
      
      public function get §&!q§() : Number
      {
         return this.§ !?§;
      }
      
      public function get §3F§() : Number
      {
         return this.§^-§;
      }
      
      public function §@!M§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§ !B§);
         }
         catch(e:Error)
         {
            §;M§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc6_ || _loc1_)
         {
            this.§;F§ = true;
            if(_loc6_)
            {
               this.§4!O§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
               if(_loc6_)
               {
                  addr45:
                  this.§4!O§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
                  if(!_loc5_)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=!S§,false);
                     if(_loc6_)
                     {
                        addr65:
                        this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§&!C§,false);
                     }
                  }
                  var _loc3_:int = 0;
                  var _loc4_:* = this.§>5§;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc4_,_loc3_));
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc3_,_loc4_);
                           if(_loc6_ || _loc2_)
                           {
                              this.§4!O§.removeEventListener(_loc1_,this.§6!j§,false);
                           }
                           continue;
                        }
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc6_ || _loc3_)
                           {
                              _loc3_ = 0;
                              if(_loc6_)
                              {
                                 addr134:
                                 _loc4_ = this.§6!5§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr154:
                              }
                              if(_loc6_ || _loc2_)
                              {
                                 if(this.§3;§)
                                 {
                                    if(_loc6_)
                                    {
                                       this.§3;§.dispose();
                                       if(_loc6_)
                                       {
                                          addr175:
                                          §§push(this.§!!;§);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr184:
                                                   this.§!!;§.dispose();
                                                   addr185:
                                                   §§push(this.§^!2§);
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr192:
                                                         this.§^!2§.dispose();
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      if(§-!>§ == this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §-!>§ = null;
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§push(Boolean(this.§5!a§));
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§pop();
                                                               §§goto(addr235);
                                                            }
                                                         }
                                                      }
                                                      addr235:
                                                      if(this.§5!a§.bitmapData)
                                                      {
                                                         addr240:
                                                         this.§5!a§.bitmapData.dispose();
                                                         if(!_loc5_)
                                                         {
                                                            this.§5!a§.bitmapData = null;
                                                         }
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr184);
                                       }
                                    }
                                    addr250:
                                    return;
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr134);
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
                     §§goto(addr134);
                  }
               }
               §§goto(addr65);
            }
         }
         §§goto(addr45);
      }
      
      private function §,!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§3;§ = this.mStage3D.context3D;
         if(_loc2_ || _loc2_)
         {
            this.§6!5§ = new Dictionary();
            if(this.§3;§)
            {
               if(!_loc1_)
               {
                  addr48:
                  this.§3;§.enableErrorChecking = this.§2!M§;
                  if(_loc2_)
                  {
                     if(this.§3;§.driverInfo.indexOf("Software") >= 0)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr89);
                  }
                  addr79:
                  this.§-!H§ = true;
                  if(_loc2_ || _loc1_)
                  {
                     addr89:
                  }
                  §§goto(addr100);
               }
            }
            else
            {
               this.§-!H§ = true;
               if(!(_loc1_ && _loc1_))
               {
                  addr100:
                  this.§7!=§();
                  return;
               }
            }
            §§goto(addr79);
         }
         §§goto(addr48);
      }
      
      private function §3"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"$§);
         if(_loc1_)
         {
            if(§§pop().numChildren > 0)
            {
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
            else
            {
               §§push(this.§,<§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
                  if(!_loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§,<§ = new this.§2!m§();
                           if(!(_loc2_ && _loc2_))
                           {
                              addr84:
                              if(this.§,<§ != null)
                              {
                                 addr104:
                                 this.§"$§.addChild(this.§,<§);
                                 §§goto(addr107);
                              }
                           }
                           throw new Error("Invalid root class: " + this.§2!m§);
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
            addr107:
            return;
         }
         §§goto(addr104);
      }
      
      private function §7!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!v§ = true;
            if(_loc1_)
            {
               §§goto(addr33);
            }
            §§goto(addr41);
         }
         addr33:
         this.mStage3D.x = this.§?t§.x;
         if(_loc1_)
         {
            addr41:
            this.mStage3D.y = this.§?t§.y;
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§!m§());
         if(!(_loc3_ && _loc1_))
         {
            if(!§§pop())
            {
               if(!_loc3_)
               {
                  return;
               }
               addr38:
               this.§3;§.configureBackBuffer(this.§?t§.width,this.§?t§.height,this.§'t§,false);
               this.§`!v§ = false;
            }
            else
            {
               addr32:
               if(this.§`!v§)
               {
                  if(this.§3;§)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr38);
                     }
                     addr53:
                     §§push(getTimer() / 1000);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() - this.§8!F§);
                        if(!_loc3_)
                        {
                           addr74:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_)
                        {
                           this.§8!F§ = _loc1_;
                           if(!_loc3_)
                           {
                              §§push(this.§"$§);
                              if(_loc4_)
                              {
                                 §§pop().advanceTime(_loc2_);
                                 if(!_loc3_)
                                 {
                                    this.§6!l§.advanceTime(_loc2_);
                                    this.§!!;§.advanceTime(_loc2_);
                                    if(_loc4_ || this)
                                    {
                                    }
                                    §§goto(addr215);
                                 }
                                 §§push(this.§^!2§);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§pop().§@>§(this.§"$§.stageWidth,this.§"$§.stageHeight);
                                    if(_loc4_)
                                    {
                                       §§push(this.§^!2§);
                                       if(_loc4_)
                                       {
                                          §§pop().clear(this.§3;§,this.§+h§,1);
                                          if(_loc4_)
                                          {
                                             §§push(this.§^!2§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr155:
                                                §§pop().§#!8§(this.§3;§,this.§+#§);
                                                if(_loc4_)
                                                {
                                                   addr164:
                                                   this.§"$§.render(this.§^!2§,1);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr155);
                                    }
                                    addr170:
                                    §§push(this.§^!2§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr189:
                                       §§pop().§<Q§();
                                       addr190:
                                       if(this.§+!,§ != null)
                                       {
                                          if(_loc4_)
                                          {
                                             this.§+!,§();
                                             addr198:
                                             this.§+!,§ = null;
                                             if(_loc4_)
                                             {
                                                addr203:
                                                §§push(this.§^!2§);
                                                if(_loc4_)
                                                {
                                                   §§pop().finishRendering(this.§3;§);
                                                   if(_loc4_)
                                                   {
                                                      addr212:
                                                      §§push(this.§^!2§);
                                                   }
                                                   §§goto(addr215);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    §§pop().§5!k§();
                                    §§goto(addr215);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr164);
                           }
                           addr215:
                           return;
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr38);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr32);
      }
      
      public function set §[$§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!,§ = param1;
         }
      }
      
      private function §1t§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§>!b§.x = this.§?t§.x;
            if(!_loc4_)
            {
               addr30:
               this.§>!b§.y = this.§?t§.y;
            }
            var _loc1_:int = this.§>!b§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§>!b§.parent;
            if(_loc5_ || _loc3_)
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(!§§pop());
                        if(_loc5_)
                        {
                           addr75:
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§pop();
                                    §§push(_loc2_ == null);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    this.§4!O§.addChild(this.§>!b§);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr160:
                                       §§push(this.§^!2§);
                                       if(_loc5_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr173:
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr176:
                                                   §§pop();
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(this.§^!2§);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr198);
                                                }
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       addr190:
                                       if(§§pop().canvas)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             addr198:
                                             §§push(this.§^!2§);
                                             if(_loc5_)
                                             {
                                                §§pop().setCanvasSize(this.§7!^§,this.§+![§,this.§?t§.width / this.§"$§.stageWidth,this.§?t§.height / this.§"$§.stageHeight);
                                             }
                                             addr223:
                                             _loc3_ = §§pop().canvas;
                                             if(!_loc4_)
                                             {
                                                if(this.§5!a§.bitmapData != _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§5!a§.bitmapData = _loc3_;
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr256:
                                                         if(this.§4!O§.getChildIndex(this.§>!b§) > 0)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      this.§4!O§.removeChild(this.§>!b§);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr277:
                                                         this.§4!O§.addChildAt(this.§>!b§,0);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr223);
                                          §§push(this.§^!2§);
                                       }
                                       addr283:
                                       return;
                                       addr110:
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr160);
                              }
                              else
                              {
                                 addr113:
                                 §§push(_loc1_ == 0);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr124:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             §§pop();
                                             §§push(Boolean(_loc2_));
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             this.§4!O§.removeChild(this.§>!b§);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr160);
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr176);
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr110);
         }
         §§goto(addr30);
      }
      
      private function §;M§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§"$§.stageWidth * 0.75;
         if(_loc4_)
         {
            _loc2_.autoSize = TextFieldAutoSize.CENTER;
            if(!_loc5_)
            {
               _loc2_.text = param1;
               if(!(_loc5_ && param1))
               {
                  addr72:
                  _loc2_.x = (this.§"$§.stageWidth - _loc2_.width) / 2;
                  _loc2_.y = (this.§"$§.stageHeight - _loc2_.height) / 2;
                  addr82:
                  if(_loc4_)
                  {
                     _loc2_.background = true;
                     if(_loc5_)
                     {
                     }
                     §§goto(addr119);
                  }
                  _loc2_.backgroundColor = 4456448;
                  if(_loc5_ && _loc3_)
                  {
                  }
                  §§goto(addr119);
               }
               addr119:
               this.§3g§.addChild(_loc2_);
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr82);
      }
      
      public function §7!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §-!>§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§ !X§ = true;
            if(_loc1_ || _loc2_)
            {
               addr43:
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§ !X§ = false;
            if(!_loc1_)
            {
               addr29:
               this.mStage3D.visible = false;
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §?A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,v§ = param1;
         }
      }
      
      private function §+!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§@!W§ = true;
            if(!(_loc1_ && _loc1_))
            {
               if(this.§5!a§ == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr65:
                     this.§5!a§ = new Bitmap();
                     if(_loc1_ && _loc1_)
                     {
                     }
                     §§goto(addr81);
                  }
                  this.§3g§.addChild(this.§5!a§);
                  §§goto(addr81);
               }
               addr81:
               return;
            }
         }
         §§goto(addr65);
      }
      
      private function §&!C§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!L§();
            if(!_loc3_)
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
         }
      }
      
      private function §=!S§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§;F§)
            {
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
            var _loc2_:*;
            §§push((_loc2_ = §§findproperty(§61§)).§61§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               _loc2_.§61§ = _loc3_;
            }
            if(!(_loc4_ && param1))
            {
               this.§+#§ = §61§;
               §§push(this.§^!2§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§push(this.§^!2§);
                     if(!(_loc4_ && this))
                     {
                        addr76:
                        §§pop().dispose();
                        §§goto(addr77);
                     }
                     §§goto(addr228);
                  }
                  addr77:
                  §§push(§7j§.§>!Z§);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     §§push(!§§pop());
                     if(_loc5_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §§pop();
                              if(!(_loc4_ && param1))
                              {
                                 §§push(Boolean(this.§3;§));
                                 if(!(_loc4_ && param1))
                                 {
                                    addr126:
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          this.§;M§("Fatal error: The application lost the device context!");
                                          if(!(_loc4_ && param1))
                                          {
                                             this.stop();
                                             return;
                                          }
                                       }
                                       addr182:
                                       this.§^!2§ = new §"W§();
                                       if(!_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       this.§7!C§();
                                       this.§,!4§();
                                       this.§3"§();
                                       addr152:
                                       §§push(Boolean(this.§3;§));
                                       if(Boolean(this.§3;§))
                                       {
                                          §§pop();
                                          §§push(this.§-!H§);
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr152);
                  }
                  addr159:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        this.mStage3DEnabled = false;
                        this.§3;§ = null;
                        this.§+!L§();
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr177);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr177);
               }
               §§goto(addr76);
            }
            addr177:
            if(this.§3;§)
            {
               if(_loc5_)
               {
                  §§goto(addr182);
               }
            }
            else
            {
               this.§^!2§ = new §]!1§();
               addr193:
               §§push(this.§^!2§);
               if(!_loc4_)
               {
                  §§pop().setCanvasSize(this.§7!^§,this.§+![§,this.§?t§.width / this.§"$§.stageWidth,this.§?t§.height / this.§"$§.stageHeight);
                  §§goto(addr228);
               }
               addr228:
               this.§^!2§.clear(null,this.§+h§);
               §§goto(addr232);
            }
            addr232:
            this.§!!;§.§^8§ = this.§1!Y§;
            if(_loc5_)
            {
               addr239:
               dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
            }
            return;
         }
         §§goto(addr152);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§7!C§();
         }
         §§push(getTimer() / 1000);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§8!F§);
            if(!_loc4_)
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this.§ !X§);
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     addr78:
                     if(!§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              addr93:
                              if(_loc3_ > 1)
                              {
                                 if(_loc5_)
                                 {
                                    this.render();
                                    if(!_loc4_)
                                    {
                                       addr100:
                                       if(this.§>!b§)
                                       {
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    this.§1t§();
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr78);
            }
            addr107:
            return;
         }
         §§goto(addr57);
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7!C§();
            if(_loc2_)
            {
               this.§"$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§ !?§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_ || param2)
            {
               §§push(§§pop() / this.§^-§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!param3)
            {
               §§push(this.§"$§);
               if(_loc7_ || param3)
               {
                  §§push(this.§ !?§);
                  if(_loc7_ || this)
                  {
                     §§push(_loc4_);
                     if(_loc7_ || this)
                     {
                        addr71:
                        §§push(§§pop() * §§pop());
                        §§push(_loc5_);
                        if(_loc7_ || param2)
                        {
                           §§pop().stageWidth = §§pop() / §§pop();
                           §§push(this.§"$§);
                           if(!_loc6_)
                           {
                              addr95:
                              §§pop().stageHeight = this.§^-§;
                           }
                           else
                           {
                              addr127:
                              §§push(this.§^-§);
                              if(_loc7_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && param2))
                                 {
                                    addr149:
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_)
                                    {
                                       addr153:
                                       §§push(§§pop() / _loc4_);
                                    }
                                 }
                                 §§goto(addr153);
                              }
                              §§pop().stageHeight = §§pop();
                           }
                           this.§7!^§ = param1;
                           this.§+![§ = param2;
                           if(_loc7_ || param3)
                           {
                              addr170:
                              this.§"$§.dispatchEvent(new §<A§(flash.events.Event.RESIZE,param1,param2));
                           }
                           return;
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr71);
               }
               §§goto(addr95);
            }
            else
            {
               §§push(this.§"$§);
               if(!(_loc6_ && param2))
               {
                  §§push(this.§ !?§);
                  if(_loc7_ || param1)
                  {
                     §§pop().stageWidth = §§pop();
                     §§push(this.§"$§);
                     if(!(_loc6_ && param2))
                     {
                        §§goto(addr127);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr127);
               }
            }
            §§goto(addr127);
         }
         §§goto(addr25);
      }
      
      public function § !Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.setCanvasSize(this.§ !?§,this.§^-§);
         }
      }
      
      private function §6!j§(param1:flash.events.Event) : void
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
            §§push(this.§ !X§);
            if(_loc9_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           §§push(this.§,v§);
                           if(!_loc10_)
                           {
                              addr66:
                              §§push(!§§pop());
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || _loc2_)
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 addr88:
                                 if(param1 is MouseEvent)
                                 {
                                    addr89:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(!_loc10_)
                                    {
                                       _loc2_ = §§pop();
                                       §§push(Number(_loc6_.stageY));
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       _loc4_ = 0;
                                       if(param1.type == MouseEvent.MOUSE_DOWN)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             this.§9?§ = true;
                                             if(_loc10_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr136:
                                             this.§9?§ = false;
                                          }
                                       }
                                       else if(param1.type == MouseEvent.MOUSE_UP)
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                    if(!_loc10_)
                                    {
                                       _loc2_ = §§pop();
                                       addr163:
                                       if(!_loc10_)
                                       {
                                          §§push(Number(_loc7_.stageY));
                                       }
                                       var _loc8_:* = param1.type;
                                       if(_loc9_)
                                       {
                                          if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                          {
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                             }
                                          }
                                          else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                          {
                                             addr276:
                                             §§push(1);
                                             if(!_loc9_)
                                             {
                                                addr292:
                                             }
                                          }
                                          else
                                          {
                                             if(TouchEvent.TOUCH_END === _loc8_)
                                             {
                                                addr326:
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§goto(addr292);
                                                   §§push(2);
                                                }
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      _loc5_ = §21§.§%@§;
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      addr424:
                                                      if(_loc5_ == §21§.§%@§)
                                                      {
                                                         §§goto(addr428);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc2_ - this.§?t§.x);
                                                         if(_loc9_)
                                                         {
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr463);
                                                      }
                                                   case 1:
                                                      §§push(§21§.§#!`§);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr197:
                                                            _loc5_ = §§pop();
                                                         }
                                                         break;
                                                      }
                                                      addr255:
                                                      _loc5_ = §§pop();
                                                      addr254:
                                                      break;
                                                      addr246:
                                                      break;
                                                   case 2:
                                                      §§push(§21§.§<w§);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr254);
                                                      }
                                                   case 3:
                                                      _loc5_ = §21§.§%@§;
                                                      break;
                                                   case 4:
                                                      §§push(§21§.§<w§);
                                                      if(!_loc10_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         break;
                                                      }
                                                      §§goto(addr255);
                                                      break;
                                                   case 5:
                                                      §§push(this.§9?§);
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(§21§.§#!`§);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                         else
                                                         {
                                                            §§push(§21§.§&i§);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc9_)
                                                               {
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      addr335:
                                                      §§push(§§pop());
                                                      if(_loc9_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               §§push(_loc2_ >= this.§?t§.right);
                                                               if(!_loc10_)
                                                               {
                                                                  addr354:
                                                                  §§push(§§pop());
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr365:
                                                                           §§pop();
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 addr380:
                                                                                 §§push(§§pop() < this.§?t§.top);
                                                                                 §§push(§§pop() < this.§?t§.top);
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    addr388:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() >= this.§?t§.bottom);
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                addr411:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr424);
                                                                                                      }
                                                                                                      addr428:
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                          }
                                                                                          §§goto(addr463);
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              addr447:
                                                                              _loc2_ = Number(§§pop());
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc3_ - this.§?t§.y);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr463:
                                                                                    _loc3_ = Number(§§pop());
                                                                                    this.§!!;§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                 }
                                                                                 §§goto(addr463);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                     }
                                                                     §§goto(addr380);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr388);
                                                }
                                                §§goto(addr335);
                                                §§push(_loc2_ < this.§?t§.left);
                                             }
                                             else
                                             {
                                                if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(3);
                                                      if(!_loc9_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else if(MouseEvent.MOUSE_UP === _loc8_)
                                                {
                                                   §§goto(addr326);
                                                   §§push(4);
                                                }
                                                else
                                                {
                                                   if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                   {
                                                      §§goto(addr326);
                                                      §§push(6);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr326);
                                             }
                                             §§push(5);
                                             if(_loc10_ && this)
                                             {
                                             }
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr276);
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc9_)
                                    {
                                       _loc4_ = _loc7_.touchPointID;
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr66);
         }
         addr82:
      }
      
      private function get §>5§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §"!U§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(_loc6_ || param2)
         {
            if(param1 in this.§6!5§)
            {
               if(!_loc5_)
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr69:
               (_loc4_ = this.§3;§.createProgram()).upload(param2,param3);
               if(_loc6_ || param1)
               {
                  this.§6!5§[param1] = _loc4_;
               }
            }
            else if(this.§3;§ != null)
            {
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §1n§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§+!l§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && param1))
               {
                  _loc2_.dispose();
                  if(_loc3_)
                  {
                     delete this.§6!5§[param1];
                  }
               }
            }
         }
      }
      
      public function §+!l§(param1:String) : Program3D
      {
         return this.§6!5§[param1] as Program3D;
      }
      
      public function §%!@§(param1:String) : Boolean
      {
         return param1 in this.§6!5§;
      }
      
      public function get §6s§() : Boolean
      {
         return this.§ !X§;
      }
      
      public function get §&t§() : §]G§
      {
         return this.§6!l§;
      }
      
      public function get §^8§() : Boolean
      {
         return this.§1!Y§;
      }
      
      public function set §^8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!Y§ = param1;
            if(_loc3_)
            {
               if(this.§3;§)
               {
                  if(_loc3_)
                  {
                     this.§!!;§.§^8§ = param1;
                  }
               }
            }
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2!M§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!M§ = param1;
            if(!_loc3_)
            {
               if(this.§3;§)
               {
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
               §§goto(addr47);
            }
            this.§3;§.enableErrorChecking = param1;
         }
         addr47:
      }
      
      public function get §9!C§() : int
      {
         return this.§'t§;
      }
      
      public function set §9!C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'t§ = param1;
            if(!_loc2_)
            {
               addr29:
               this.§7!=§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function get §84§() : Rectangle
      {
         return this.§?t§.clone();
      }
      
      public function set §84§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?t§ = param1.clone();
            if(!_loc3_)
            {
               this.§7!=§();
            }
         }
      }
      
      public function get §3g§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || _loc2_)
         {
            if(this.§>!b§ == null)
            {
               if(!_loc3_)
               {
                  addr52:
                  this.§>!b§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!_loc3_)
               {
                  _loc1_.hideBuiltInItems();
                  if(!_loc3_)
                  {
                     this.§>!b§.contextMenu = _loc1_;
                     if(_loc3_ && _loc1_)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§1t§();
               }
            }
            addr79:
            return this.§>!b§;
         }
         §§goto(addr52);
      }
      
      public function get stage() : §-!`§.Stage
      {
         return this.§"$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@!5§() : flash.display.Stage
      {
         return this.§4!O§;
      }
      
      public function get §3!g§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§@!W§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
