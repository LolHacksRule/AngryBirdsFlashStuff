package §%!j§
{
   import §"&§.§8p§;
   import §+!-§.DisplayObject;
   import §+!-§.Stage;
   import §0!%§.Texture;
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
   import starling.events.§ " §;
   import starling.events.§-!#§;
   import starling.events.§8$§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §%K§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §-A§:§%K§;
      
      private static var §`!'§:Boolean;
      
      private static var §4S§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §0"§:§+!-§.Stage;
      
      private var §-!8§:Class;
      
      private var §>!O§:§+!-§.DisplayObject;
      
      private var §2#§:§8p§;
      
      private var §'!>§:Boolean;
      
      private var §case §:Boolean;
      
      private var §<B§:§&Y§;
      
      private var §'8§:§ " §;
      
      private var §0!x§:int;
      
      private var §[!v§:Boolean;
      
      private var §%!L§:Boolean;
      
      private var §;9§:Number;
      
      private var §6&§:Rectangle;
      
      private var § 4§:Boolean;
      
      private var §1"0§:flash.display.Stage;
      
      private var §=+§:Sprite;
      
      private var §[U§:Context3D;
      
      private var §@'§:Dictionary;
      
      private var §]!§:int;
      
      private var §<7§:Boolean;
      
      private var §!D§:Number;
      
      private var §>2§:Number;
      
      private var § !d§:Number;
      
      private var §1M§:Number;
      
      private var §@w§:Number;
      
      private var §-!!§:Number;
      
      private var §+H§:Function;
      
      private var §?3§:uint;
      
      private var §'W§:String;
      
      private var §0f§:Bitmap;
      
      private var §]l§:Boolean = false;
      
      private var §@L§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §&!7§:Boolean = false;
      
      public function §%K§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!(_loc10_ && param2))
         {
            super();
            if(!_loc10_)
            {
               if(param2 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop2:
                  while(true)
                  {
                     this.§@'§ = new Dictionary();
                     if(_loc10_)
                     {
                        continue;
                     }
                     if(_loc9_ || param3)
                     {
                        if(_loc9_ || param2)
                        {
                           if(_loc9_ || param1)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§6&§ = param3;
                                    loop4:
                                    while(true)
                                    {
                                       this.mStage3D = param4;
                                       loop5:
                                       while(true)
                                       {
                                          this.§0"§ = new §+!-§.Stage(param3.width,param3.height,param2.color);
                                          loop6:
                                          for(; _loc9_; if(!(_loc9_ || param1))
                                          {
                                             continue;
                                          },this.§[!v§ = false,while(true)
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                addr192:
                                                while(true)
                                                {
                                                   this.§%!L§ = false;
                                                   addr166:
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   addr180:
                                                   this.§;9§ = getTimer() / 1000;
                                                   continue loop2;
                                                }
                                                addr192:
                                             }
                                             §§goto(addr239);
                                          })
                                          {
                                             while(true)
                                             {
                                                this.§1"0§ = param2;
                                                addr258:
                                                addr221:
                                                addr197:
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      this.§'8§ = new § " §(this.§0"§);
                                                      while(true)
                                                      {
                                                         if(_loc9_ || param2)
                                                         {
                                                            addr246:
                                                            if(_loc9_ || this)
                                                            {
                                                               this.§2#§ = new §8p§();
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     break loop8;
                                                                  }
                                                               }
                                                               addr212:
                                                            }
                                                            else
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  this.§1M§ = this.§>2§;
                                                                  addr320:
                                                                  while(true)
                                                                  {
                                                                     this.§@w§ = param2.stageWidth;
                                                                     addr312:
                                                                     while(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§ !d§ = this.§!D§;
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     this.§-!!§ = param2.stageHeight;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §!!S§ = true;
                                                               break loop6;
                                                            }
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      addr239:
                                                   }
                                                   §§goto(addr312);
                                                }
                                                this.§0!x§ = 0;
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr258);
                                                   §§goto(addr221);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§^7§();
                                             continue loop3;
                                          }
                                       }
                                       if(!(_loc9_ || param3))
                                       {
                                          continue;
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr166);
                  }
                  for each(_loc6_ in this.§=!Z§)
                  {
                     if(!_loc10_)
                     {
                        param2.addEventListener(_loc6_,this.§1!f§,false,0,true);
                     }
                  }
                  if(_loc9_)
                  {
                     param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2!^§,false,0,true);
                     loop18:
                     while(true)
                     {
                        param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2!^§,false,0,true);
                        while(true)
                        {
                           this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !m§,false,1,true);
                           addr394:
                           if(_loc9_ || param2)
                           {
                              this.§'W§ = param5;
                              addr401:
                              if(_loc10_)
                              {
                                 while(_loc9_ || param2)
                                 {
                                    §§goto(addr394);
                                    §§goto(addr401);
                                 }
                                 continue loop18;
                                 addr387:
                              }
                              addr372:
                              if(_loc9_ || param2)
                              {
                                 if(!_loc10_)
                                 {
                                    return;
                                 }
                                 loop21:
                                 while(true)
                                 {
                                    if(!(_loc10_ && this))
                                    {
                                       this.mStage3D.visible = false;
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§-!I§,false,1,true);
                                          continue loop21;
                                       }
                                       addr450:
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§1!>§(true);
                                 continue loop18;
                                 §§goto(addr372);
                              }
                              continue loop18;
                           }
                        }
                     }
                  }
                  §§goto(addr450);
               }
               else if(param1 == null)
               {
                  if(_loc9_ || param2)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     }
                     §§goto(addr192);
                  }
                  if(param4 == null)
                  {
                     if(_loc9_ || param3)
                     {
                        param4 = param2.stage3Ds[0];
                     }
                     §§goto(addr276);
                  }
                  this.§!D§ = param3.width;
                  if(_loc9_ || param1)
                  {
                     this.§>2§ = param3.height;
                     §§goto(addr331);
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr320);
         }
         §§goto(addr276);
      }
      
      public static function get §%!R§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%K§))
         {
            §§push(§`9§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr51:
                     §§push(§`9§.§<7§);
                     if(!_loc1_)
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
      
      public static function §,!>§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§-A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr142:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr145:
                        loop4:
                        while(true)
                        {
                           §§push(§-A§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§]l§);
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr110:
                                 while(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             loop10:
                                             while(_loc1_)
                                             {
                                                §§push(§-A§);
                                                loop11:
                                                while(_loc1_)
                                                {
                                                   §§push(§§pop().§[U§ == null);
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc2_ && §%K§))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc1_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break loop2;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§-A§);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop11;
                                                               continue loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop1;
                                                         addr102:
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  addr75:
                  return §§pop();
               }
            }
         }
         §§goto(addr145);
      }
      
      public static function get §`9§() : §%K§
      {
         return §-A§;
      }
      
      public static function get §^!d§() : §8p§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§-A§);
            if(_loc1_ || _loc1_)
            {
               return !!§§pop() ? §-A§.§^!d§ : null;
            }
         }
         §§goto(addr48);
      }
      
      public static function get § var§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set § var§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §!!S§() : Boolean
      {
         return §`!'§;
      }
      
      public static function set §!!S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§-A§ != null)
            {
               if(!(_loc3_ && param1))
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
               while(true)
               {
               }
               addr69:
            }
            while(true)
            {
               §`!'§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr69);
            }
         }
      }
      
      public static function §1q§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §%K§))
         {
            if(§`9§)
            {
               if(_loc5_)
               {
                  return Texture.§7!7§(§`9§.§[U§,param1,param2,param3);
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
            §§push(§-A§);
            if(_loc3_ || §%K§)
            {
               if(§§pop().§[U§)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§-A§);
                     if(_loc3_)
                     {
                        §§pop().§[U§.drawToBitmapData(param1);
                        if(_loc4_)
                        {
                           addr67:
                           _loc2_ = §-A§.§<B§.canvas;
                           addr65:
                           if(!_loc4_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        addr60:
                        §§push(§§pop().§<B§);
                        if(_loc3_)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr65);
                           }
                           addr94:
                           return;
                        }
                     }
                  }
                  §§goto(addr67);
               }
               else
               {
                  §§push(§-A§);
                  if(!_loc4_)
                  {
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get §'"6§() : §+!-§.DisplayObject
      {
         return this.§>!O§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?3§ = param1;
         }
      }
      
      public function get §+!6§() : Number
      {
         return this.§!D§;
      }
      
      public function get §-!d§() : Number
      {
         return this.§>2§;
      }
      
      public function §0!@§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§'W§);
         }
         catch(e:Error)
         {
            §0!e§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc6_)
         {
            this.§&!7§ = true;
            while(true)
            {
               this.§1"0§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2!^§,false);
               loop1:
               while(!(_loc5_ && this))
               {
                  this.§1"0§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2!^§,false);
                  loop2:
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !m§,false);
                        while(_loc6_)
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§-!I§,false);
                           if(_loc6_ || this)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §with§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[U§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§@'§ = new Dictionary();
               do
               {
                  if(!this.§[U§)
                  {
                     this.§<7§ = true;
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§[U§.enableErrorChecking = this.§%!L§;
                                 }
                                 addr90:
                              }
                           }
                           while(true)
                           {
                              if(this.§[U§.driverInfo.indexOf("Software") >= 0)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.§<7§ = true;
                                    addr85:
                                    while(true)
                                    {
                                    }
                                    addr85:
                                 }
                                 §§goto(addr85);
                              }
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     continue;
                  }
                  §§goto(addr90);
               }
               while(_loc1_);
               
               return;
            }
         }
         §§goto(addr66);
      }
      
      private function §`W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0"§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren > 0)
               {
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     loop6:
                     while(!(_loc2_ && _loc2_))
                     {
                        loop7:
                        while(true)
                        {
                           §§push(this.§>!O§);
                           if(_loc1_)
                           {
                              §§push(null);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    break;
                                 }
                                 if(_loc2_ && this)
                                 {
                                    do
                                    {
                                       break loop7;
                                       §§pop().addChild(this.§>!O§);
                                    }
                                    while(_loc2_);
                                    
                                    return;
                                    addr96:
                                 }
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop6;
                                 }
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    throw new Error("Invalid root class: " + this.§-!8§);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       continue loop7;
                                    }
                                 }
                                 addr101:
                              }
                              while(true)
                              {
                                 this.§>!O§ = new this.§-!8§();
                                 continue loop6;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr100:
                           }
                           §§goto(addr101);
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr100);
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      private function §9S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@L§ = true;
         }
         while(true)
         {
            this.mStage3D.x = this.§6&§.x;
            while(_loc1_)
            {
               this.mStage3D.y = this.§6&§.y;
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            §§push(§,!>§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr80);
               }
               loop1:
               while(true)
               {
                  §§push(this.§@L§);
                  if(!(_loc4_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              addr80:
                              return;
                           }
                           while(true)
                           {
                              if(this.§[U§)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    this.§[U§.configureBackBuffer(this.§6&§.width,this.§6&§.height,this.§0!x§,false);
                                    loop2:
                                    while(true)
                                    {
                                       addr24:
                                       while(true)
                                       {
                                          this.§@L§ = false;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                    addr76:
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr24);
                           }
                           addr57:
                        }
                        §§goto(addr76);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(getTimer() / 1000);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§§pop() - this.§;9§);
                  if(_loc3_)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     this.§;9§ = _loc1_;
                     loop3:
                     while(true)
                     {
                        §§push(this.§0"§);
                        loop4:
                        while(true)
                        {
                           §§pop().advanceTime(_loc2_);
                           loop5:
                           while(true)
                           {
                              this.§2#§.advanceTime(_loc2_);
                              loop6:
                              while(true)
                              {
                                 this.§'8§.advanceTime(_loc2_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§<B§);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§`!M§(this.§0"§.stageWidth,this.§0"§.stageHeight);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§<B§);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().clear(this.§[U§,this.§?3§,1);
                                             loop11:
                                             while(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§<B§);
                                                while(true)
                                                {
                                                   §§pop().§+"+§(this.§[U§,this.§]!§);
                                                   continue loop4;
                                                   addr223:
                                                   loop16:
                                                   for(; _loc3_ || this; while(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop().finishRendering(this.§[U§);
                                                      §§goto(addr164);
                                                      §§push(this.§<B§);
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§pop().§<Q§();
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr119);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr164);
                                                      }
                                                   })
                                                   {
                                                      §§pop().§0"6§();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(this.§+H§ != null)
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  this.§+H§();
                                                                  addr219:
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     this.§+H§ = null;
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr119:
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr164:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§<B§);
                                                               continue loop16;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr223);
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr57);
      }
      
      public function set §>"§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+H§ = param1;
         }
      }
      
      private function §[X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            this.§=+§.x = this.§6&§.x;
            if(!(_loc5_ && _loc1_))
            {
               addr34:
               this.§=+§.y = this.§6&§.y;
            }
            var _loc1_:int = this.§=+§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§=+§.parent;
            if(!_loc5_)
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
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(_loc1_);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop());
                                          loop9:
                                          for(; _loc4_; §§push(§§pop()),if(_loc4_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr167);
                                             }
                                             while(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr129);
                                             }
                                          },continue,addr319:,return)
                                          {
                                             if(§§pop())
                                             {
                                                addr228:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr229:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc2_));
                                                      addr188:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr248);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                addr228:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§1"0§.removeChild(this.§=+§);
                                                         while(true)
                                                         {
                                                            addr94:
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§<B§);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setCanvasSize(this.§ !d§,this.§1M§,this.§6&§.width / this.§0"§.stageWidth,this.§6&§.height / this.§0"§.stageHeight);
                                                                     addr129:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<B§);
                                                                                    if(_loc5_ && _loc1_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       continue loop9;
                                                                                       if(!(_loc4_ || _loc1_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr252:
                                                                                 _loc3_ = §§pop().canvas;
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(this.§0f§.bitmapData != _loc3_)
                                                                                    {
                                                                                       addr314:
                                                                                       this.§0f§.bitmapData = _loc3_;
                                                                                    }
                                                                                    addr281:
                                                                                    if(this.§1"0§.getChildIndex(this.§=+§) > 0)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.§1"0§.removeChild(this.§=+§);
                                                                                       }
                                                                                       addr296:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          this.§1"0§.addChildAt(this.§=+§,0);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr281);
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                          addr298:
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                                 addr135:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr252);
                                                                                 §§push(this.§<B§);
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§<B§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    §§push(Boolean(§§pop().canvas));
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr62);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr167:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§1"0§.addChild(this.§=+§);
                                                                                       break loop17;
                                                                                    }
                                                                                    addr236:
                                                                                 }
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr135);
                                                                           }
                                                                           addr241:
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr241);
                                                      }
                                                   }
                                                }
                                                §§goto(addr252);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr236);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr34);
      }
      
      private function §0!e§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(true)
               {
                  _loc2_.wordWrap = true;
                  loop2:
                  while(!_loc4_)
                  {
                     _loc2_.width = this.§0"§.stageWidth * 0.75;
                     loop3:
                     while(true)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        while(true)
                        {
                           _loc2_.text = param1;
                           while(_loc5_ || _loc2_)
                           {
                              continue loop3;
                              addr75:
                              if(_loc5_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    _loc2_.backgroundColor = 4456448;
                                    addr56:
                                    loop10:
                                    while(!(_loc4_ && this))
                                    {
                                       this.§7!H§.addChild(_loc2_);
                                       if(!(_loc5_ || param1))
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop9;
                                          }
                                          continue loop2;
                                       }
                                       addr111:
                                       addr68:
                                       while(!(_loc4_ && param1))
                                       {
                                          §§goto(addr75);
                                       }
                                       while(true)
                                       {
                                          _loc2_.y = (this.§0"§.stageHeight - _loc2_.height) / 2;
                                          break loop10;
                                          §§goto(addr68);
                                       }
                                       addr68:
                                    }
                                    while(true)
                                    {
                                       _loc2_.background = true;
                                       §§goto(addr68);
                                       §§goto(addr56);
                                    }
                                 }
                                 return;
                                 addr87:
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §^7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-A§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'!>§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(!_loc1_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§'!>§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(_loc1_);
            
         }
      }
      
      public function §1!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§case § = param1;
         }
      }
      
      private function §-;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§]l§ = true;
            loop0:
            while(this.§0f§ == null)
            {
               loop1:
               while(_loc1_ || _loc2_)
               {
                  this.§0f§ = new Bitmap();
                  while(true)
                  {
                     this.§7!H§.addChild(this.§0f§);
                     if(_loc1_)
                     {
                        if(!_loc2_)
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
         §§goto(addr75);
      }
      
      private function §-!I§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§-;§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(!_loc3_);
            
         }
      }
      
      private function § !m§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§&!7§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§4S§)).§4S§);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§4S§ = _loc3_;
                  }
                  if(_loc5_)
                  {
                     this.§]!§ = §4S§;
                     loop0:
                     while(true)
                     {
                        §§push(this.§<B§);
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§<B§);
                                 addr350:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr351:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr348:
                           }
                           while(true)
                           {
                              §§push(§%K§.§!!S§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr331:
                                             while(_loc5_)
                                             {
                                                §§push(Boolean(this.§[U§));
                                                while(!_loc4_)
                                                {
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                          addr330:
                                       }
                                       loop12:
                                       while(!§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§^7§();
                                             loop14:
                                             while(true)
                                             {
                                                this.§with§();
                                                addr298:
                                                loop15:
                                                while(true)
                                                {
                                                   this.§`W§();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§[U§));
                                                      while(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop29:
                                                               for(; _loc5_ || param1; continue loop28)
                                                               {
                                                                  §§push(this.§<7§);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                                  addr255:
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              this.mStage3DEnabled = false;
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.§[U§ = null;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             this.§-;§();
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break loop12;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!this.§[U§)
                                                                                                   {
                                                                                                      this.§<B§ = new § j§();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            §§push(this.§<B§);
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().setCanvasSize(this.§ !d§,this.§1M§,this.§6&§.width / this.§0"§.stageWidth,this.§6&§.height / this.§0"§.stageHeight);
                                                                                                               addr180:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  addr208:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§<B§ = new §&Y§();
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr90);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   §§goto(addr208);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    return;
                                                                                    addr309:
                                                                                 }
                                                                                 continue loop29;
                                                                              }
                                                                           }
                                                                           addr259:
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     addr257:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr330);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               addr323:
                                                               this.stop();
                                                               §§goto(addr309);
                                                            }
                                                            addr282:
                                                         }
                                                         §§goto(addr257);
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             addr320:
                                             this.§0!e§("Fatal error: The application lost the device context!");
                                             §§goto(addr323);
                                          }
                                          else
                                          {
                                             §§goto(addr348);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr298);
               }
               §§goto(addr320);
            }
            §§goto(addr282);
         }
         §§goto(addr259);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^7§();
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
            §§push(§§pop() - this.§;9§);
            if(_loc4_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§'!>§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr121:
                        while(true)
                        {
                           §§push(_loc3_ > 1);
                           if(!(_loc4_ || this))
                           {
                              continue loop2;
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(!_loc5_)
                        {
                           this.render();
                           while(true)
                           {
                           }
                        }
                        §§goto(addr121);
                        addr100:
                     }
                     while(this.§=+§)
                     {
                        if(!(_loc5_ && this))
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr114);
                              continue;
                           }
                           if(_loc4_)
                           {
                              addr80:
                              this.§[X§();
                           }
                           else
                           {
                              §§goto(addr100);
                           }
                        }
                        break;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §2!^§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^7§();
         }
         do
         {
            this.§0"§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(!(_loc3_ || this));
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!(_loc7_ && param3))
         {
            §§push(§§pop() / this.§!D§);
            if(_loc6_ || this)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc6_ || this)
            {
               §§push(§§pop() / this.§>2§);
               if(_loc6_ || this)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  if(!param3)
                  {
                     if(!(_loc7_ && param2))
                     {
                        §§push(this.§0"§);
                        loop0:
                        while(true)
                        {
                           §§push(this.§!D§);
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§pop().stageWidth = §§pop();
                                          addr224:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(this.§0"§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(this.§>2§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().stageHeight = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§ !d§ = param1;
                                                         addr122:
                                                         loop12:
                                                         while(!(_loc7_ && param3))
                                                         {
                                                            this.§1M§ = param2;
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(this.§0"§);
                                                               if(_loc6_ || param3)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr183:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!D§);
                                                                     addr185:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§pop().stageWidth = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§0"§);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§push(this.§>2§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr149:
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc7_ && param2)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr159:
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§pop().stageHeight = §§pop();
                                                                              break loop12;
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                                  §§goto(addr149);
                                                                  §§goto(addr117);
                                                               }
                                                               addr117:
                                                               §§goto(addr185);
                                                            }
                                                            continue loop15;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop17;
                                                            §§goto(addr122);
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
                              }
                           }
                        }
                     }
                     §§goto(addr224);
                  }
                  else
                  {
                     §§push(this.§0"§);
                  }
                  §§goto(addr183);
               }
               §§goto(addr224);
            }
            §§goto(addr54);
         }
         §§goto(addr34);
      }
      
      public function §8I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.setCanvasSize(this.§!D§,this.§>2§);
         }
      }
      
      private function §1!f§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!_loc10_)
         {
            §§push(this.§'!>§);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(!(_loc10_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§pop();
                        if(_loc9_ || this)
                        {
                           §§push(this.§case §);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || param1)
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 else
                                 {
                                    addr93:
                                    if(param1 is MouseEvent)
                                    {
                                       addr94:
                                       §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                       if(!_loc10_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             addr163:
                                             _loc3_ = Number(_loc6_.stageY);
                                          }
                                          do
                                          {
                                             _loc4_ = 0;
                                             do
                                             {
                                                while(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            this.§ 4§ = false;
                                                         }
                                                         else
                                                         {
                                                            var _loc8_:* = param1.type;
                                                            addr165:
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                               {
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr432:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr462:
                                                                     §§push(5);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        addr470:
                                                                     }
                                                                  }
                                                                  addr475:
                                                                  loop31:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§-!#§.§-""§);
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           addr308:
                                                                           _loc5_ = §§pop();
                                                                           addr307:
                                                                           if(!_loc9_)
                                                                           {
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              addr699:
                                                                              §§push(_loc2_);
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() < this.§6&§.left);
                                                                                 addr704:
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() >= this.§6&§.right);
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop27:
                                                                                                         while(_loc9_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop9:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr688:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < this.§6&§.top);
                                                                                                                        addr561:
                                                                                                                        if(_loc10_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop() - this.§6&§.x);
                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr579:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr581:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - this.§6&§.y);
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr524:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 addr527:
                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 addr658:
                                                                                                                                 loop17:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= this.§6&§.bottom);
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(!(_loc10_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          loop24:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                               addr648:
                                                                                                                                                            }
                                                                                                                                                            §§pop();
                                                                                                                                                            loop19:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §-!#§.§-""§);
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop19;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr591:
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr561);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr579);
                                                                                                                                                                           break loop31;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr584:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                      addr660:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc10_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                   addr636:
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr659:
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    §§goto(addr636);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr659);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr524);
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr687:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr658);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      addr682:
                                                                                                   }
                                                                                                   §§goto(addr687);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr682);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr668);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr275:
                                                                           §§push(§§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr280:
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    addr288:
                                                                                    _loc5_ = §§pop();
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr298:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr484:
                                                                                    }
                                                                                    §§goto(addr699);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr317:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    §§goto(addr581);
                                                                                 }
                                                                              }
                                                                              §§goto(addr584);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                     case 1:
                                                                        addr366:
                                                                        §§push(§-!#§.§8!U§);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr484);
                                                                        }
                                                                        §§goto(addr699);
                                                                     case 2:
                                                                        addr340:
                                                                        _loc5_ = §-!#§.§&i§;
                                                                        addr339:
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr699);
                                                                        }
                                                                        §§goto(addr508);
                                                                     case 3:
                                                                        §§goto(addr317);
                                                                     case 4:
                                                                        §§push(§-!#§.§-""§);
                                                                        §§push(§-!#§.§&i§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr339);
                                                                           }
                                                                        }
                                                                        §§goto(addr308);
                                                                     case 5:
                                                                        §§push(this.§ 4§);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§-!#§.§8!U§);
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§goto(addr280);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr268:
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr484);
                                                                              }
                                                                              §§goto(addr508);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§-!#§.§#-§);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §§goto(addr268);
                                                                              }
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr704);
                                                                     default:
                                                                        §§goto(addr699);
                                                                  }
                                                                  continue loop30;
                                                               }
                                                               if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc9_ || _loc2_))
                                                                     {
                                                                        addr457:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr462);
                                                                  }
                                                               }
                                                               else if(TouchEvent.TOUCH_END === _loc8_)
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§goto(addr432);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr462);
                                                                  }
                                                               }
                                                               else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     addr439:
                                                                     §§push(3);
                                                                     if(_loc10_ && _loc2_)
                                                                     {
                                                                        §§goto(addr470);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr454:
                                                                     §§push(4);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr457);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if(MouseEvent.MOUSE_UP === _loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr454);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr462);
                                                                     }
                                                                  }
                                                                  else if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                                  {
                                                                     §§goto(addr462);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(6);
                                                                  }
                                                                  §§goto(addr462);
                                                               }
                                                               §§goto(addr475);
                                                            }
                                                            §§goto(addr439);
                                                            addr165:
                                                            addr155:
                                                            addr199:
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                             while(_loc10_);
                                             
                                          }
                                          while(_loc10_ && this);
                                          
                                          this.§ 4§ = true;
                                          §§goto(addr155);
                                       }
                                       §§goto(addr163);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                       if(!(_loc10_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             §§push(Number(_loc7_.stageY));
                                          }
                                          §§goto(addr199);
                                       }
                                       _loc3_ = §§pop();
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          _loc4_ = _loc7_.touchPointID;
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr74);
                        }
                        addr82:
                        return;
                     }
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr93);
      }
      
      private function get §=!Z§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §7!c§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param3)
         {
            if(param1 in this.§@'§)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr48);
               }
               else
               {
                  (_loc4_ = this.§[U§.createProgram()).upload(param2,param3);
                  addr58:
                  if(!_loc6_)
                  {
                     this.§@'§[param1] = _loc4_;
                  }
               }
            }
            else if(this.§[U§ != null)
            {
               §§goto(addr58);
            }
            return;
         }
         addr48:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §<!c§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§^"9§(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_)
            {
               if(_loc3_ || param1)
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§@'§[param1];
                  }
                  while(!_loc3_);
                  
                  addr73:
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §^"9§(param1:String) : Program3D
      {
         return this.§@'§[param1] as Program3D;
      }
      
      public function §?!W§(param1:String) : Boolean
      {
         return param1 in this.§@'§;
      }
      
      public function get §#L§() : Boolean
      {
         return this.§'!>§;
      }
      
      public function get §^!d§() : §8p§
      {
         return this.§2#§;
      }
      
      public function get §;r§() : Boolean
      {
         return this.§[!v§;
      }
      
      public function set §;r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!v§ = param1;
            while(this.§[U§)
            {
               if(_loc3_)
               {
                  this.§'8§.§;r§ = param1;
               }
               if(_loc3_ || _loc3_)
               {
                  addr66:
                  break;
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§%!L§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%!L§ = param1;
            while(this.§[U§)
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     this.§[U§.enableErrorChecking = param1;
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
      
      public function get §>>§() : int
      {
         return this.§0!x§;
      }
      
      public function set §>>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!x§ = param1;
            do
            {
               this.§9S§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get §<!J§() : Rectangle
      {
         return this.§6&§.clone();
      }
      
      public function set §<!J§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6&§ = param1.clone();
            do
            {
               this.§9S§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §7!H§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§=+§ == null)
            {
               if(!_loc2_)
               {
                  this.§=+§ = new Sprite();
                  addr47:
                  _loc1_ = new ContextMenu();
                  if(!_loc2_)
                  {
                     _loc1_.hideBuiltInItems();
                     loop0:
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           this.§=+§.contextMenu = _loc1_;
                           continue loop0;
                        }
                     }
                     addr86:
                  }
                  while(true)
                  {
                     this.§[X§();
                     if(_loc2_ && _loc2_)
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
                        §§goto(addr86);
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr47);
            }
            return this.§=+§;
         }
         §§goto(addr47);
      }
      
      public function get stage() : §+!-§.Stage
      {
         return this.§0"§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+!l§() : flash.display.Stage
      {
         return this.§1"0§;
      }
      
      public function get §8"1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]l§);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
   }
}
