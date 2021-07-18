package §"a§
{
   import §'!6§.DisplayObject;
   import §'!6§.Stage;
   import §+"Y§.§#v§;
   import §<5§.Texture;
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
   import starling.events.§#%§;
   import starling.events.§%a§;
   import starling.events.§'! §;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §!"J§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,!8§:Rectangle;
      
      private static var §7"C§:Boolean = true;
      
      private static var §@K§:Boolean;
      
      private static var §5"Z§:§!"J§;
      
      private static var §02§:Boolean;
      
      private static var §1!+§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!"J§))
         {
            VERSION = "1.0";
         }
         do
         {
            §7"C§ = true;
         }
         while(_loc2_);
         
      }
      
      private var mStage3D:Stage3D;
      
      private var §,">§:§'!6§.Stage;
      
      private var §]e§:Class;
      
      private var §&!!§:§'!6§.DisplayObject;
      
      private var §'z§:§#v§;
      
      private var §&K§:Boolean;
      
      private var §6!v§:Boolean;
      
      private var §-!q§:§>w§;
      
      private var §"?§:§#%§;
      
      private var §5!Q§:int;
      
      private var §^s§:Boolean;
      
      private var §>3§:Boolean;
      
      private var §%!5§:Number;
      
      private var §@W§:Boolean;
      
      private var §^b§:flash.display.Stage;
      
      private var §2"Z§:Sprite;
      
      private var §-!A§:Context3D;
      
      private var §,F§:Dictionary;
      
      private var §9";§:int;
      
      private var §7"F§:Boolean;
      
      private var §-!t§:Number;
      
      private var §5"=§:Number;
      
      private var §5V§:Number;
      
      private var §,!D§:Number;
      
      private var §+"T§:Number;
      
      private var §,"3§:Number;
      
      private var §"";§:Function;
      
      private var §+!m§:uint;
      
      private var §?"9§:String;
      
      private var §""?§:Bitmap;
      
      private var §>D§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §&"@§:Boolean = false;
      
      public function §!"J§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!(_loc10_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               addr48:
               loop1:
               while(true)
               {
                  if(param2 == null)
                  {
                     if(_loc9_)
                     {
                        throw new ArgumentError("Stage must not be null");
                     }
                     loop2:
                     while(true)
                     {
                        this.§+"T§ = param2.stageWidth;
                        while(true)
                        {
                           this.§,"3§ = param2.stageHeight;
                           loop4:
                           for(; _loc9_ || param1; while(_loc9_ || param1)
                           {
                              §,!8§ = param3;
                              §§goto(addr255);
                              §§goto(addr116);
                           })
                           {
                              §27§ = true;
                              loop5:
                              while(_loc9_)
                              {
                                 this.§?!U§();
                                 while(true)
                                 {
                                    this.§]e§ = param1;
                                    continue loop4;
                                    while(_loc9_ || param2)
                                    {
                                       if(_loc9_)
                                       {
                                          this.§>3§ = false;
                                          loop16:
                                          while(_loc9_ || param1)
                                          {
                                             addr151:
                                             if(!(_loc10_ && param2))
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         this.§%!5§ = getTimer() / 1000;
                                                         addr132:
                                                         addr181:
                                                         while(!(_loc10_ && param3))
                                                         {
                                                            this.§,F§ = new Dictionary();
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr116:
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  break loop17;
                                                               }
                                                               continue loop16;
                                                            }
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr183:
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  this.§^s§ = false;
                                                                  break loop16;
                                                               }
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  this.§'z§ = new §#v§();
                                                                  break loop14;
                                                                  §§goto(addr183);
                                                               }
                                                            }
                                                            break;
                                                            §§goto(addr132);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§5!Q§ = 0;
                                                            §§goto(addr181);
                                                         }
                                                      }
                                                      continue loop4;
                                                      addr125:
                                                   }
                                                   addr321:
                                                   addr255:
                                                   while(!(_loc10_ && this))
                                                   {
                                                      this.mStage3D = param4;
                                                      while(!(_loc10_ && param2))
                                                      {
                                                         this.§,">§ = new §'!6§.Stage(param3.width,param3.height,param2.color);
                                                         while(_loc9_ || param2)
                                                         {
                                                            this.§^b§ = param2;
                                                            while(true)
                                                            {
                                                               this.§"?§ = new §#%§(this.§,">§);
                                                               §§goto(addr204);
                                                               §§goto(addr151);
                                                            }
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§5V§ = this.§-!t§;
                                                      break loop5;
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr209);
                                          }
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§,!D§ = this.§5"=§;
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     if(param1 == null)
                     {
                        if(!_loc10_)
                        {
                           throw new ArgumentError("Root class must not be null");
                        }
                        continue loop0;
                     }
                     addr69:
                     if(param3 == null)
                     {
                        if(!_loc10_)
                        {
                           param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        }
                        break;
                     }
                     if(param4 == null)
                     {
                        if(_loc9_)
                        {
                           param4 = param2.stage3Ds[0];
                           addr95:
                           this.§-!t§ = param3.width;
                           if(_loc9_ || param1)
                           {
                              this.§5"=§ = param3.height;
                              §§goto(addr321);
                           }
                           break;
                        }
                        §§goto(addr316);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr321);
               }
            }
         }
         while(false)
         {
            §§goto(addr125);
         }
         for each(_loc6_ in this.§#"1§)
         {
            if(!_loc10_)
            {
               param2.addEventListener(_loc6_,this.§4@§,false,0,true);
            }
         }
         if(_loc9_)
         {
            param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ !y§,false,0,true);
            while(true)
            {
               param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ !y§,false,0,true);
               addr378:
               if(!(_loc9_ || param1))
               {
                  continue;
               }
               return;
               addr385:
            }
         }
         while(true)
         {
            this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?3§,false,1,true);
            loop25:
            do
            {
               this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;!z§,false,1,true);
               while(true)
               {
                  this.mStage3D.visible = false;
                  while(_loc9_ || param2)
                  {
                     this.§>"1§(true);
                     while(_loc9_)
                     {
                        this.§+!m§ = param2.color;
                        do
                        {
                           this.§?"9§ = param5;
                        }
                        while(!_loc9_);
                        
                        if(!(_loc10_ && param3))
                        {
                           continue loop25;
                        }
                     }
                  }
               }
            }
            while(!_loc9_);
            
            if(!(_loc9_ || param1))
            {
               continue;
            }
            §§goto(addr378);
         }
         §§goto(addr385);
      }
      
      public static function get §!X§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§1&§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     §§push(§1&§.§7"F§);
                     if(!_loc2_)
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
         }
         §§goto(addr45);
      }
      
      public static function §+",§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§5"Z§);
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
                              §§push(§5"Z§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§>D§);
                                 loop6:
                                 while(true)
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
                                             while(_loc2_)
                                             {
                                                §§pop();
                                                loop10:
                                                for(; _loc2_ || §!"J§; §§pop(),if(_loc1_ && _loc1_)
                                                {
                                                   continue;
                                                },§§goto(addr111))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§5"Z§);
                                                      while(!_loc1_)
                                                      {
                                                         §§push(§§pop().§-!A§ == null);
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc1_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr70:
                                                                  return §§pop();
                                                                  addr69:
                                                               }
                                                            }
                                                            addr91:
                                                            while(_loc2_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop9;
                                                            addr49:
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr69);
                                                            §§push(!§§pop());
                                                         }
                                                         §§push(§5"Z§);
                                                         if(_loc1_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc1_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(§§pop().§-!A§.driverInfo == "Disposed");
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               §§goto(addr49);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         §§goto(addr70);
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr70);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      private static function §8"0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@K§ = true;
         }
      }
      
      public static function get §8N§() : Rectangle
      {
         return §,!8§.clone();
      }
      
      public static function set §8N§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §,!8§ = param1.clone();
         }
         do
         {
            §8"0§();
         }
         while(!_loc3_);
         
      }
      
      public static function set §8!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §7"C§ = param1;
         }
      }
      
      public static function get §8!'§() : Boolean
      {
         return §7"C§;
      }
      
      public static function get §1&§() : §!"J§
      {
         return §5"Z§;
      }
      
      public static function get §<!C§() : §#v§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5"Z§);
            if(!_loc2_)
            {
               return !!§§pop() ? §5"Z§.§<!C§ : null;
            }
         }
         §§goto(addr23);
      }
      
      public static function get §2",§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2",§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §!"J§)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §27§() : Boolean
      {
         return §02§;
      }
      
      public static function set §27§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§5"Z§ == null)
            {
               loop0:
               while(true)
               {
                  §02§ = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr50:
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
         §§goto(addr50);
      }
      
      public static function §^G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(§1&§)
            {
               if(!_loc5_)
               {
                  return Texture.§""C§(§1&§.§-!A§,param1,param2,param3);
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(§5"Z§);
            if(_loc4_ || param1)
            {
               if(§§pop().§-!A§)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(§5"Z§);
                     if(_loc4_ || §!"J§)
                     {
                        addr62:
                        §§pop().§-!A§.drawToBitmapData(param1);
                        if(!_loc4_)
                        {
                           addr93:
                           _loc2_ = §5"Z§.§-!q§.canvas;
                           addr91:
                           if(!_loc3_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr91);
               }
               else
               {
                  §§push(§5"Z§);
                  if(!(_loc3_ && §!"J§))
                  {
                     §§push(§§pop().§-!q§);
                     if(_loc4_)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr91);
                        }
                        addr110:
                        return;
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr62);
         }
         §§goto(addr93);
      }
      
      public function get §7Z§() : §'!6§.DisplayObject
      {
         return this.§&!!§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!m§ = param1;
         }
      }
      
      public function get §@[§() : Number
      {
         return this.§-!t§;
      }
      
      public function get §!A§() : Number
      {
         return this.§5"=§;
      }
      
      public function §?"D§() : void
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
                        addr66:
                        while(!_loc3_)
                        {
                           §§pop().§§slot[2] = §§pop();
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break;
                                 addr56:
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    §§pop().§§slot[3] = false;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop8;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              addr47:
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr56);
                              }
                              else
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       §§push("flash.display3D.Context3DProfile");
                                       if(_loc4_)
                                       {
                                          §§pop().§§slot[1] = §§pop();
                                          if(_loc4_ || _loc3_)
                                          {
                                             var requestContext3D:Function = this.mStage3D.requestContext3D;
                                             addr187:
                                             var moreThanOne:Boolean = requestContext3D.length > 1;
                                             addr168:
                                             addr193:
                                             addr210:
                                             §§push(§§newactivation());
                                             if(_loc4_ || _loc1_)
                                             {
                                                if(§§pop().§§slot[3])
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr181:
                                                      var profile:String = "baselineConstrained";
                                                      addr180:
                                                   }
                                                   addr182:
                                                   if(_loc4_)
                                                   {
                                                      addr151:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr159:
                                                         §§pop().§§slot[2](this.§?"9§,profile);
                                                         addr163:
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr182);
                                                         }
                                                         return;
                                                         addr211:
                                                         addr157:
                                                         addr156:
                                                         addr165:
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && this))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(§§pop().§§slot[2]);
                                                         if(_loc4_)
                                                         {
                                                            §§push(global);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.§?"9§);
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§pop()(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr151);
                                                                        }
                                                                        §§goto(addr211);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr151);
                                             }
                                             addr195:
                                             §§goto(addr195);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr187);
                                 }
                                 catch(e:Error)
                                 {
                                    §+"Q§("Context3D error: " + e.message);
                                    throw e;
                                 }
                                 §§goto(addr159);
                              }
                           }
                           continue loop3;
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc5_)
         {
            this.§&"@§ = true;
            loop0:
            while(true)
            {
               this.§^b§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ !y§,false);
               addr83:
               while(true)
               {
                  this.§^b§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ !y§,false);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;!z§,false);
            if(!(_loc6_ && _loc1_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            §§goto(addr52);
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§#"1§;
         loop6:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc5_)
                  {
                     this.§^b§.removeEventListener(_loc1_,this.§4@§,false);
                  }
                  continue;
               }
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                        if(_loc5_ || this)
                        {
                           addr146:
                           _loc4_ = this.§,F§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop6;
                           }
                           addr161:
                        }
                        if(_loc5_)
                        {
                           if(this.§-!A§)
                           {
                              while(true)
                              {
                                 this.§-!A§.dispose();
                                 addr293:
                                 while(true)
                                 {
                                 }
                              }
                              addr290:
                           }
                           loop9:
                           while(true)
                           {
                              §§push(this.§"?§);
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§"?§);
                                       addr285:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          addr286:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr210:
                                       if(_loc6_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       this.§""?§.bitmapData.dispose();
                                       loop19:
                                       while(_loc5_ || _loc3_)
                                       {
                                          this.§""?§.bitmapData = null;
                                          if(!(_loc6_ && this))
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§-!q§);
                                                            addr273:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr276:
                                                                  while(true)
                                                                  {
                                                                     if(§5"Z§ == this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §5"Z§ = null;
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                              continue loop23;
                                                                              addr252:
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        continue loop9;
                                                                        addr247:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(this.§""?§));
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr237:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop19;
                                                                              }
                                                                              addr237:
                                                                           }
                                                                           loop17:
                                                                           while(§§pop())
                                                                           {
                                                                              continue loop18;
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(this.§""?§.bitmapData));
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§goto(addr237);
                                                                              }
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                     continue loop10;
                                                                     §§goto(addr276);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr271:
                                                      }
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr286);
                                             }
                                             else
                                             {
                                                addr191:
                                             }
                                             addr168:
                                          }
                                          continue;
                                          return;
                                       }
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr242);
                                             }
                                             else
                                             {
                                                §§goto(addr286);
                                             }
                                             addr265:
                                          }
                                          break;
                                          §§goto(addr237);
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                                 §§goto(addr265);
                              }
                              §§goto(addr285);
                           }
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr242);
                  }
               }
               §§goto(addr146);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc5_)
               {
                  _loc2_.dispose();
               }
               continue;
            }
            §§goto(addr146);
         }
      }
      
      private function §6!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-!A§ = this.mStage3D.context3D;
            while(true)
            {
               this.§,F§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§-!A§)
                  {
                     this.§7"F§ = true;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr109);
               }
            }
         }
         while(true)
         {
            §§goto(addr65);
         }
      }
      
      private function §,"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§,">§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§&!!§);
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
                                 this.§&!!§ = new this.§]e§();
                                 addr121:
                                 while(true)
                                 {
                                 }
                              }
                              addr117:
                           }
                           while(true)
                           {
                              §§push(this.§&!!§);
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              if(§§pop() != §§pop())
                              {
                                 continue loop0;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    throw new Error("Invalid root class: " + this.§]e§);
                                 }
                                 continue loop1;
                              }
                              addr85:
                              while(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc1_ && this)
                                    {
                                       return;
                                    }
                                    addr127:
                                    continue loop0;
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr121);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         try
         {
            this.§-!A§.configureBackBuffer(§,!8§.width,§,!8§.height,this.§5!Q§,false);
            if(!_loc3_)
            {
               §@K§ = false;
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
         if(_loc4_)
         {
            §§push(§+",§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§@K§);
                     loop2:
                     while(§§pop())
                     {
                        loop3:
                        while(!this.§-!A§)
                        {
                           if(this.§""?§)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       §@K§ = false;
                                       loop4:
                                       for(; !_loc3_; this.setCanvasSize(§,!8§.width,§,!8§.height),if(!_loc3_)
                                       {
                                          if(!(_loc4_ || this))
                                          {
                                             break loop3;
                                          }
                                          if(_loc4_ || this)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(false)
                                                {
                                                   addr52:
                                                   break loop2;
                                                }
                                                break loop2;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       })
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          addr142:
                                          addr123:
                                          this.mStage3D.y = §,!8§.y;
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc1_))
                                             {
                                                §§goto(addr146);
                                             }
                                             this.configureBackBuffer();
                                             while(true)
                                             {
                                                §§push(§@K§);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue loop2;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr111);
                                                }
                                                addr82:
                                                while(true)
                                                {
                                                   this.setCanvasSize(§,!8§.width,§,!8§.height);
                                                   break loop4;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                break;
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr116);
                                          §§goto(addr82);
                                       }
                                       §§goto(addr52);
                                       addr72:
                                    }
                                    addr111:
                                    return;
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr72);
                           }
                           break loop2;
                        }
                        this.mStage3D.x = §,!8§.x;
                        §§goto(addr142);
                     }
                     §§push(getTimer() / 1000);
                     if(_loc4_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - this.§%!5§);
                        if(!(_loc3_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        this.§%!5§ = _loc1_;
                        addr369:
                        this.§,">§.advanceTime(_loc2_);
                        this.§'z§.advanceTime(_loc2_);
                        this.§"?§.advanceTime(_loc2_);
                        addr365:
                        addr375:
                        if(_loc4_)
                        {
                           addr344:
                           this.§-!q§.§2M§(this.§,">§.stageWidth,this.§,">§.stageHeight);
                           addr324:
                           this.§-!q§.clear(this.§-!A§,this.§+!m§,1);
                           addr313:
                           this.§-!q§.§&!-§(this.§-!A§,this.§9";§);
                           addr351:
                           addr330:
                           if(_loc4_)
                           {
                              §§push(this.§,">§);
                              if(_loc4_ || _loc1_)
                              {
                                 §§pop().render(this.§-!q§,1);
                                 addr307:
                                 if(!_loc3_)
                                 {
                                    addr282:
                                    §§push(this.§-!q§);
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop().§1"U§();
                                          addr292:
                                          if(this.§"";§ != null)
                                          {
                                             if(_loc4_ || _loc1_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§"";§();
                                                   addr276:
                                                   if(_loc4_)
                                                   {
                                                      this.§"";§ = null;
                                                      addr250:
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr226:
                                                            this.§-!q§.finishRendering(this.§-!A§);
                                                            addr229:
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(this.§-!q§);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_ || _loc1_)
                                                                           {
                                                                              §§pop().§@<§();
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     §§goto(addr226);
                                                                     addr245:
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr250);
                                                            addr223:
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr344);
                                    }
                                    §§goto(addr313);
                                 }
                                 §§goto(addr365);
                              }
                              §§goto(addr369);
                           }
                           §§goto(addr375);
                        }
                        addr371:
                        §§goto(addr371);
                     }
                     §§goto(addr245);
                  }
               }
               addr146:
               return;
            }
         }
         §§goto(addr116);
      }
      
      public function set §`3§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"";§ = param1;
         }
      }
      
      private function §8!!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc2_))
         {
            this.§2"Z§.x = §,!8§.x;
            if(_loc5_ || this)
            {
               addr39:
               this.§2"Z§.y = §,!8§.y;
            }
            var _loc1_:int = this.§2"Z§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§2"Z§.parent;
            if(!_loc4_)
            {
               §§push(_loc1_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr246:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        while(true)
                        {
                           §§push(§§pop());
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
                                       while(!_loc4_)
                                       {
                                          loop9:
                                          for(; _loc5_ || _loc1_; while(!(_loc4_ && _loc3_))
                                          {
                                             §§goto(addr173);
                                          })
                                          {
                                             §§push(§§pop());
                                             loop10:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && _loc1_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc2_));
                                                         addr182:
                                                         while(!_loc4_)
                                                         {
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§^b§.removeChild(this.§2"Z§);
                                                         addr191:
                                                         addr121:
                                                         while(true)
                                                         {
                                                         }
                                                         addr121:
                                                         if(_loc4_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(false)
                                                         {
                                                            addr132:
                                                            while(true)
                                                            {
                                                               §§push(this.§-!q§);
                                                               addr135:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            addr132:
                                                         }
                                                         else
                                                         {
                                                            addr254:
                                                            _loc3_ = this.§-!q§.canvas;
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(this.§""?§.bitmapData != _loc3_)
                                                               {
                                                                  addr326:
                                                                  this.§""?§.bitmapData = _loc3_;
                                                               }
                                                               addr281:
                                                               if(this.§^b§.getChildIndex(this.§2"Z§) > 0)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           this.§^b§.removeChild(this.§2"Z§);
                                                                           this.§^b§.addChildAt(this.§2"Z§,0);
                                                                           addr320:
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr281);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           addr320:
                                                                           §§goto(addr320);
                                                                        }
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr320);
                                                               }
                                                               addr331:
                                                               return;
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr238);
         }
         §§goto(addr39);
      }
      
      private function §+"Q§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc5_ || _loc2_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
         }
         while(true)
         {
            _loc2_.defaultTextFormat = _loc3_;
            loop1:
            while(true)
            {
               _loc2_.wordWrap = true;
               while(true)
               {
                  _loc2_.width = this.§,">§.stageWidth * 0.75;
                  while(_loc5_ || _loc2_)
                  {
                     _loc2_.autoSize = TextFieldAutoSize.CENTER;
                     loop4:
                     while(true)
                     {
                        _loc2_.text = param1;
                        addr137:
                        while(true)
                        {
                           _loc2_.x = (this.§,">§.stageWidth - _loc2_.width) / 2;
                           continue loop4;
                        }
                     }
                     if(_loc5_ || param1)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §?!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5"Z§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&K§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§&K§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §>"1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6!v§ = param1;
         }
      }
      
      private function § !F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>D§ = true;
            loop0:
            while(this.§""?§ == null)
            {
               loop1:
               do
               {
                  this.§""?§ = new Bitmap();
                  while(!_loc2_)
                  {
                     this.§<"!§.addChild(this.§""?§);
                     if(_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc1_ || this));
               
               break;
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §;!z§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !F§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc2_);
         
      }
      
      private function §?3§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§&"@§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  loop31:
                  while(true)
                  {
                     this.§ !F§();
                     while(true)
                     {
                        loop22:
                        while(true)
                        {
                           if(this.§-!A§)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§-!q§ = new §>w§();
                                    loop23:
                                    while(true)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          this.§"?§.§`!m§ = this.§^s§;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            break loop24;
                                                         }
                                                         §§goto(addr321);
                                                      }
                                                      §§goto(addr118);
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr232);
                                          }
                                          while(true)
                                          {
                                             this.stop();
                                             addr321:
                                             addr321:
                                             §§goto(addr323);
                                          }
                                          addr323:
                                          loop26:
                                          while(true)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                continue loop23;
                                             }
                                             addr203:
                                             addr299:
                                             while(!(_loc5_ && this))
                                             {
                                                §§push(this.§-!q§);
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr136:
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         continue loop26;
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§-!q§);
                                                               addr367:
                                                               while(true)
                                                               {
                                                                  §§pop().dispose();
                                                                  addr368:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr365:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§!"J§.§27§);
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr352:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr353:
                                                                           addr372:
                                                                           while(!(_loc5_ && _loc2_))
                                                                           {
                                                                              §§push(Boolean(this.§-!A§));
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop1;
                                                                              §§goto(addr353);
                                                                           }
                                                                        }
                                                                        addr352:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr329:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              this.§+"Q§("Fatal error: The application lost the device context!");
                                                                              addr330:
                                                                              break loop25;
                                                                           }
                                                                           addr311:
                                                                           while(true)
                                                                           {
                                                                              this.§?!U§();
                                                                              break loop22;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr351:
                                                               }
                                                               §§goto(addr352);
                                                               addr274:
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop16:
                                                                        while(_loc4_)
                                                                        {
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§7"F§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr253:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.mStage3DEnabled = false;
                                                                                             addr262:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§-!A§ = null;
                                                                                                addr232:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                             addr118:
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr257:
                                                                                    }
                                                                                    addr267:
                                                                                    while(_loc4_ || param1)
                                                                                    {
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                              }
                                                                              addr295:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr365);
                                                                           }
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr367);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr267);
                                                §§goto(addr203);
                                             }
                                             addr203:
                                          }
                                          if(_loc5_)
                                          {
                                             break loop25;
                                          }
                                          return;
                                       }
                                       if(_loc4_)
                                       {
                                          return;
                                       }
                                       addr303:
                                       while(!(_loc5_ && this))
                                       {
                                          this.§,"S§();
                                          §§goto(addr299);
                                       }
                                       §§goto(addr311);
                                    }
                                    addr223:
                                 }
                                 break;
                              }
                              §§goto(addr223);
                           }
                           else
                           {
                              this.§-!q§ = new §'" §();
                           }
                           §§goto(addr203);
                        }
                        while(true)
                        {
                           this.§6!X§();
                           §§goto(addr303);
                        }
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              §§push(this.§-!q§);
                              if(_loc4_ || param1)
                              {
                                 §§pop().clear(null,this.§+!m§);
                                 §§goto(addr118);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr262);
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§1!+§)).§1!+§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     _loc2_.§1!+§ = _loc3_;
                  }
                  if(_loc4_ || this)
                  {
                     this.§9";§ = §1!+§;
                     §§goto(addr372);
                  }
               }
               §§goto(addr295);
            }
            §§goto(addr252);
         }
         §§goto(addr330);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§?!U§();
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
            §§push(§§pop() - this.§%!5§);
            if(_loc4_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(this.§&K§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop2:
                              while(!_loc5_)
                              {
                                 this.render();
                                 while(true)
                                 {
                                    addr76:
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          addr90:
                                          this.§8!!§();
                                          addr66:
                                          return;
                                          addr92:
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(_loc3_ > 1);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr140:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop4;
                                 }
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(this.§2"Z§)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr76);
                                 }
                                 §§goto(addr92);
                              }
                              break;
                              §§goto(addr127);
                           }
                           §§goto(addr66);
                        }
                        continue;
                        addr121:
                     }
                  }
                  §§goto(addr140);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr46);
      }
      
      private function § !y§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§?!U§();
            do
            {
               this.§,">§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§-!t§);
            if(!(_loc5_ && _loc3_))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param2);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() / this.§5"=§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && this))
            {
               if(§8!'§)
               {
                  §§push(this.§,">§);
                  while(true)
                  {
                     §§push(this.§-!t§);
                     loop1:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           §§pop().stageWidth = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(this.§,">§);
                              loop3:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.§5"=§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(_loc4_);
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr173:
                                                   §§push(_loc3_);
                                                   if(_loc6_)
                                                   {
                                                      addr176:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            while(true)
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.§5V§ = param1;
                                                                  loop12:
                                                                  while(!_loc5_)
                                                                  {
                                                                     this.§,!D§ = param2;
                                                                     while(!_loc5_)
                                                                     {
                                                                        continue loop3;
                                                                        §§pop().dispatchEvent(new §%a§(flash.events.Event.RESIZE,param1,param2));
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr216:
                                                                        addr223:
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              addr218:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§,">§);
                                                                                 break loop5;
                                                                              }
                                                                              addr221:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§-!t§);
                                                                           addr225:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr226:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr227:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    addr228:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr229:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().stageWidth = §§pop();
                                                                                          break loop12;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,">§);
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr213:
                                                                           §§push(this.§5"=§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().stageHeight = §§pop();
                                                                              §§goto(addr216);
                                                                              §§goto(addr213);
                                                                           }
                                                                           addr215:
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr211);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr227);
                     }
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr218);
         }
         §§goto(addr35);
      }
      
      public function §"K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setCanvasSize(this.§-!t§,this.§5"=§);
         }
      }
      
      private function §4@§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!_loc9_)
         {
            §§push(this.§&K§);
            if(!(_loc9_ && param1))
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_ || _loc2_)
                     {
                        §§pop();
                        if(_loc10_ || this)
                        {
                           §§push(this.§6!v§);
                           if(_loc10_)
                           {
                              §§push(!§§pop());
                              if(!(_loc9_ && this))
                              {
                                 addr75:
                                 if(§§pop())
                                 {
                                    if(_loc10_ || _loc3_)
                                    {
                                       return;
                                    }
                                    addr91:
                                    if(param1 is MouseEvent)
                                    {
                                       addr95:
                                       §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                       if(!(_loc9_ && param1))
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_ || this)
                                          {
                                             addr169:
                                             _loc3_ = Number(_loc6_.stageY);
                                             while(true)
                                             {
                                                _loc4_ = 0;
                                                loop32:
                                                for(; _loc10_; if(!(_loc10_ || _loc2_))
                                                {
                                                   continue;
                                                })
                                                {
                                                   do
                                                   {
                                                      if(param1.type != MouseEvent.MOUSE_DOWN)
                                                      {
                                                         if(param1.type == MouseEvent.MOUSE_UP)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               this.§@W§ = false;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            addr159:
                                                            continue;
                                                            addr159:
                                                         }
                                                         break;
                                                      }
                                                      if(_loc10_)
                                                      {
                                                         continue loop32;
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   while(false);
                                                   
                                                   var _loc8_:* = param1.type;
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                      {
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               addr433:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr465:
                                                            §§push(4);
                                                            if(!_loc9_)
                                                            {
                                                               addr468:
                                                            }
                                                            else
                                                            {
                                                               addr481:
                                                            }
                                                         }
                                                      }
                                                      else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                      {
                                                         if(_loc10_ || this)
                                                         {
                                                            addr420:
                                                            §§push(1);
                                                            if(_loc9_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr445:
                                                            §§push(3);
                                                            if(_loc10_ || param1)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else if(TouchEvent.TOUCH_END === _loc8_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(2);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr433);
                                                            }
                                                            addr486:
                                                            loop34:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(§'! §.§?""§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        addr214:
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr361:
                                                                        }
                                                                        §§push(_loc2_);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §,!8§.left);
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
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() >= §,!8§.right);
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop6:
                                                                                                         while(_loc10_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               loop8:
                                                                                                               while(_loc10_)
                                                                                                               {
                                                                                                                  §§push(§§pop() < §,!8§.top);
                                                                                                                  loop9:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr617:
                                                                                                                     if(_loc9_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr625:
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           addr578:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §'! §.§?""§);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr585:
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr653:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                          {
                                                                                                                                             break loop34;
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    addr555:
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       continue loop8;
                                                                                                                                       addr588:
                                                                                                                                       loop19:
                                                                                                                                       while(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §,!8§.x);
                                                                                                                                          loop20:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop21:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         addr535:
                                                                                                                                                         if(!(_loc10_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            for(; !_loc9_; this.§"?§.§0"%§(_loc4_,_loc5_,_loc2_,_loc3_),if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                               addr510:
                                                                                                                                                            })
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            addr593:
                                                                                                                                                            §§push(§§pop() >= §,!8§.bottom);
                                                                                                                                                            if(_loc10_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               loop14:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr615);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr583);
                                                                                                                                                                  }
                                                                                                                                                                  addr644:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr652);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr615);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr588);
                                                                                                                                                   §§goto(addr555);
                                                                                                                                                }
                                                                                                                                                §§goto(addr625);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                                 addr583:
                                                                                                                              }
                                                                                                                              break loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr615:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr653);
                                                                                                                              }
                                                                                                                              addr652:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         addr686:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr644);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr683:
                                                                                             }
                                                                                             §§goto(addr686);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr683);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr353:
                                                                        _loc5_ = §§pop();
                                                                        addr352:
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§goto(addr361);
                                                                        }
                                                                     }
                                                                     §§goto(addr689);
                                                                  }
                                                                  §§goto(addr214);
                                                               case 1:
                                                                  addr367:
                                                                  _loc5_ = §'! §.§8!Y§;
                                                                  addr366:
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                                  break;
                                                               case 2:
                                                                  §§goto(addr352);
                                                               case 3:
                                                                  §§push(§'! §.§2!3§);
                                                                  §§push(§'! §.§?""§);
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr328:
                                                                     _loc5_ = §§pop();
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        addr293:
                                                                        §§goto(addr214);
                                                                     }
                                                                     §§goto(addr510);
                                                                  }
                                                                  §§goto(addr578);
                                                               case 4:
                                                                  addr306:
                                                                  §§push(§'! §.§2!3§);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                                  break;
                                                               case 5:
                                                                  §§push(this.§@W§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§'! §.§8!Y§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc9_ && this)
                                                                                    {
                                                                                       addr271:
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr273:
                                                                                          §§push(§§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr276:
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr293);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr214);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr689);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr249:
                                                                                    }
                                                                                    §§goto(addr273);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr366);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr689);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr588);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§'! §.§5"G§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 §§goto(addr578);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr367);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr689);
                                                                        }
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr624);
                                                               default:
                                                                  §§goto(addr214);
                                                            }
                                                            continue loop29;
                                                         }
                                                         §§goto(addr465);
                                                         §§goto(addr468);
                                                      }
                                                      else
                                                      {
                                                         if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               §§goto(addr445);
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_UP === _loc8_)
                                                         {
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                         {
                                                            §§goto(addr486);
                                                            §§push(6);
                                                         }
                                                         §§goto(addr486);
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§goto(addr481);
                                                         }
                                                      }
                                                      §§goto(addr486);
                                                   }
                                                   §§goto(addr420);
                                                }
                                             }
                                          }
                                          this.§@W§ = true;
                                          §§goto(addr159);
                                       }
                                       §§goto(addr169);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                       if(!_loc9_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_ || param1)
                                          {
                                             §§push(Number(_loc7_.stageY));
                                          }
                                          §§goto(addr205);
                                       }
                                       _loc3_ = §§pop();
                                       if(!(_loc9_ && param1))
                                       {
                                          _loc4_ = _loc7_.touchPointID;
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr91);
      }
      
      private function get §#"1§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §'!Q§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_)
         {
            if(param1 in this.§,F§)
            {
               if(!_loc6_)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
         }
         if(this.§-!A§ != null)
         {
            (_loc4_ = this.§-!A§.createProgram()).upload(param2,param3);
            if(_loc5_ || this)
            {
               this.§,F§[param1] = _loc4_;
            }
         }
      }
      
      public function §^S§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§ z§(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_)
            {
               do
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§,F§[param1];
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(_loc3_ && this);
               
               addr77:
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function § z§(param1:String) : Program3D
      {
         return this.§,F§[param1] as Program3D;
      }
      
      public function §6"6§(param1:String) : Boolean
      {
         return param1 in this.§,F§;
      }
      
      public function get §5I§() : Boolean
      {
         return this.§&K§;
      }
      
      public function get §<!C§() : §#v§
      {
         return this.§'z§;
      }
      
      public function get §`!m§() : Boolean
      {
         return this.§^s§;
      }
      
      public function set §`!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^s§ = param1;
         }
         while(this.§-!A§)
         {
            if(!(_loc3_ && _loc2_))
            {
               this.§"?§.§`!m§ = param1;
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§>3§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>3§ = param1;
         }
         while(this.§-!A§)
         {
            if(!_loc2_)
            {
               this.§-!A§.enableErrorChecking = param1;
            }
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function get §#'§() : int
      {
         return this.§5!Q§;
      }
      
      public function set §#'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!Q§ = param1;
            do
            {
               §8"0§();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get §<"!§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || _loc2_)
         {
            if(this.§2"Z§ == null)
            {
               if(_loc2_)
               {
                  this.§2"Z§ = new Sprite();
                  _loc1_ = new ContextMenu();
                  addr46:
                  if(!_loc3_)
                  {
                     _loc1_.hideBuiltInItems();
                     loop0:
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           this.§2"Z§.contextMenu = _loc1_;
                           continue loop0;
                        }
                     }
                     addr85:
                  }
                  while(true)
                  {
                     this.§8!!§();
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && this))
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr46);
            }
            return this.§2"Z§;
         }
         §§goto(addr46);
      }
      
      public function get stage() : §'!6§.Stage
      {
         return this.§,">§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!!1§() : flash.display.Stage
      {
         return this.§^b§;
      }
      
      public function get §28§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>D§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
