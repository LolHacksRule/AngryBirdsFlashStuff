package §2m§
{
   import §85§.§[D§;
   import §?]§.Texture;
   import §`g§.DisplayObject;
   import §`g§.Stage;
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
   import starling.events.§4!G§;
   import starling.events.§<A§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`"§;
   
   public class §<!?§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §`!4§:Rectangle;
      
      private static var § !L§:Boolean = true;
      
      private static var §;L§:Boolean;
      
      private static var §5u§:§<!?§;
      
      private static var § !e§:Boolean;
      
      private static var § k§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.0";
         }
         do
         {
            § !L§ = true;
         }
         while(!(_loc2_ || §<!?§));
         
      }
      
      private var mStage3D:Stage3D;
      
      private var §@e§:§`g§.Stage;
      
      private var §@l§:Class;
      
      private var §?!R§:§`g§.DisplayObject;
      
      private var §1!6§:§[D§;
      
      private var §=!w§:Boolean;
      
      private var §<B§:Boolean;
      
      private var §[!s§:§@>§;
      
      private var §-y§:§`"§;
      
      private var §;;§:int;
      
      private var §6q§:Boolean;
      
      private var §&!q§:Boolean;
      
      private var §>q§:Number;
      
      private var §9!z§:Boolean;
      
      private var §!f§:flash.display.Stage;
      
      private var §]g§:Sprite;
      
      private var §implements§:Context3D;
      
      private var §8! §:Dictionary;
      
      private var §?1§:int;
      
      private var §4L§:Boolean;
      
      private var §`w§:Number;
      
      private var §-K§:Number;
      
      private var §0!e§:Number;
      
      private var § F§:Number;
      
      private var §;r§:Number;
      
      private var §+!]§:Number;
      
      private var §%!C§:Function;
      
      private var §4t§:uint;
      
      private var §"!N§:String;
      
      private var §&v§:Bitmap;
      
      private var §@r§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1Q§:Boolean = false;
      
      public function §<!?§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(_loc10_ || param2)
         {
            super();
            if(!_loc9_)
            {
               if(param2 == null)
               {
                  if(_loc10_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop29:
                  while(true)
                  {
                     this.§;r§ = param2.stageWidth;
                     loop11:
                     while(true)
                     {
                        if(_loc10_ || this)
                        {
                           this.§+!]§ = param2.stageHeight;
                           loop4:
                           while(true)
                           {
                              §&"#§ = true;
                              loop5:
                              while(true)
                              {
                                 if(_loc9_ && this)
                                 {
                                    continue loop29;
                                 }
                                 while(true)
                                 {
                                    this.§!P§();
                                    loop6:
                                    while(true)
                                    {
                                       this.§@l§ = param1;
                                       loop7:
                                       while(true)
                                       {
                                          §`!4§ = param3;
                                          addr245:
                                          loop28:
                                          while(true)
                                          {
                                             this.mStage3D = param4;
                                             loop14:
                                             while(true)
                                             {
                                                this.§@e§ = new §`g§.Stage(param3.width,param3.height,param2.color);
                                                loop8:
                                                while(true)
                                                {
                                                   this.§!f§ = param2;
                                                   loop9:
                                                   while(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         this.§-y§ = new §`"§(this.§@e§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc9_ && this)
                                                            {
                                                               continue loop9;
                                                            }
                                                            this.§1!6§ = new §[D§();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               this.§;;§ = 0;
                                                               addr179:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            this.§6q§ = false;
                                                            loop13:
                                                            while(true)
                                                            {
                                                               this.§&!q§ = false;
                                                               addr167:
                                                               addr169:
                                                               while(!_loc10_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     this.§>q§ = getTimer() / 1000;
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(!(_loc10_ || param2))
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(!(_loc10_ || this))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        this.§8! § = new Dictionary();
                                                                        if(_loc9_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!(_loc10_ || param2))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 for each(_loc6_ in _loc8_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       param2.addEventListener(_loc6_,this.§3!6§,false,0,true);
                                                                                    }
                                                                                 }
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[>§,false,0,true);
                                                                                 }
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[>§,false,0,true);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!y§,false,1,true);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§>" §,false,1,true);
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             this.mStage3D.visible = false;
                                                                                             loop23:
                                                                                             for(; _loc10_; if(!(_loc10_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             },§§goto(addr375))
                                                                                             {
                                                                                                this.§7d§(true);
                                                                                                loop24:
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      this.§4t§ = param2.color;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc9_ && param2))
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                         addr375:
                                                                                                         this.§"!N§ = param5;
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr326:
                                                                                 addr128:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0!e§ = this.§`w§;
                                                                                 }
                                                                                 addr302:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr179);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr167);
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  var _loc7_:int = 0;
                                                                  var _loc8_:* = this.§2;§;
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop29;
                           }
                        }
                        while(true)
                        {
                           this.§ F§ = this.§-K§;
                           continue loop29;
                        }
                     }
                  }
                  addr291:
               }
               else if(param1 == null)
               {
                  if(_loc10_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr266);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc10_ || param2)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr80:
                        if(param4 == null)
                        {
                           if(!(_loc9_ && this))
                           {
                              param4 = param2.stage3Ds[0];
                              addr96:
                              this.§`w§ = param3.width;
                              if(_loc10_)
                              {
                                 this.§-K§ = param3.height;
                                 §§goto(addr302);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr245);
         }
         §§goto(addr291);
      }
      
      public static function get §@!_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<!?§))
         {
            §§push(§,=§);
            if(_loc2_ || §<!?§)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && §<!?§))
                  {
                     addr51:
                     §§push(§,=§.§4L§);
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
      
      public static function §0,§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§5u§);
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
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr145:
                        loop4:
                        while(true)
                        {
                           §§push(§5u§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§@r§);
                              if(_loc1_ || §<!?§)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc1_)
                                 {
                                    addr129:
                                    §§push(§§pop());
                                    while(§§pop())
                                    {
                                    }
                                    break loop2;
                                    addr130:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§5u§);
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().§implements§ == null);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            break loop8;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc1_)
                                                         {
                                                            if(!(_loc1_ || _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break loop2;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr130);
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr70:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         §§push(§§pop().§implements§.driverInfo == "Disposed");
                                                         continue loop6;
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               §§push(!§§pop());
                                                               break loop2;
                                                            }
                                                            §§goto(addr70);
                                                         }
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop3;
                                                         break;
                                                      }
                                                      addr28:
                                                      §§pop();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr45);
                                                }
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
                  addr45:
                  return §§pop();
               }
            }
         }
         §§goto(addr145);
      }
      
      private static function §'!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;L§ = true;
         }
      }
      
      public static function get §+i§() : Rectangle
      {
         return §`!4§.clone();
      }
      
      public static function set §+i§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §`!4§ = param1.clone();
            do
            {
               §'!X§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public static function set §8!`§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            § !L§ = param1;
         }
      }
      
      public static function get §8!`§() : Boolean
      {
         return § !L§;
      }
      
      public static function get §,=§() : §<!?§
      {
         return §5u§;
      }
      
      public static function get §#T§() : §[D§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5u§);
            if(!_loc2_)
            {
               return !!§§pop() ? §5u§.§#T§ : null;
            }
         }
         §§goto(addr23);
      }
      
      public static function get §@!7§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@!7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §&"#§() : Boolean
      {
         return § !e§;
      }
      
      public static function set §&"#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §<!?§)
         {
            if(§5u§ == null)
            {
               do
               {
                  § !e§ = param1;
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function § "§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §<!?§)
         {
            if(§,=§)
            {
               if(_loc4_ || param1)
               {
                  return Texture.§=u§(§,=§.§implements§,param1,param2,param3);
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
         if(_loc4_)
         {
            §§push(§5u§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop().§implements§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§5u§);
                     if(!_loc3_)
                     {
                        addr52:
                        §§pop().§implements§.drawToBitmapData(param1);
                        if(!(_loc4_ || _loc3_))
                        {
                           addr93:
                           _loc2_ = §5u§.§[!s§.canvas;
                           addr91:
                           if(!_loc3_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr62:
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr62);
               }
               else
               {
                  §§push(§5u§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop().§[!s§);
                     if(!(_loc3_ && §<!?§))
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
            §§goto(addr52);
         }
         §§goto(addr62);
      }
      
      public function get §<!h§() : §`g§.DisplayObject
      {
         return this.§?!R§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4t§ = param1;
         }
      }
      
      public function get §'!^§() : Number
      {
         return this.§`w§;
      }
      
      public function get §7k§() : Number
      {
         return this.§-K§;
      }
      
      public function §>F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§push(null);
                        addr70:
                        while(_loc3_)
                        {
                           §§pop().§§slot[2] = §§pop();
                           while(_loc3_ || this)
                           {
                              do
                              {
                                 §§push(§§newactivation());
                                 continue loop0;
                              }
                              while(false);
                              
                              try
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    §§push("flash.display3D.Context3DProfile");
                                    if(_loc3_ || this)
                                    {
                                       §§pop().§§slot[1] = §§pop();
                                       if(_loc3_ || _loc3_)
                                       {
                                          var requestContext3D:Function = this.mStage3D.requestContext3D;
                                          addr206:
                                          var moreThanOne:Boolean = requestContext3D.length > 1;
                                          addr229:
                                          addr212:
                                          addr214:
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(§§pop().§§slot[3])
                                             {
                                                addr191:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   addr195:
                                                   §§pop().§§slot[4] = "baselineConstrained";
                                                   addr196:
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr151:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || this)
                                                      {
                                                         addr164:
                                                         §§pop().§§slot[2](this.§"!N§,profile);
                                                         addr168:
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr229);
                                                               }
                                                               return;
                                                               addr230:
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr196);
                                                         addr162:
                                                         addr161:
                                                         addr160:
                                                      }
                                                      §§goto(addr191);
                                                      addr203:
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().§§slot[2]);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(global);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(this.§"!N§);
                                                         if(!_loc4_)
                                                         {
                                                            §§pop()(§§pop());
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr151);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr160);
                              }
                              catch(e:Error)
                              {
                                 §`$§("Context3D error: " + e.message);
                                 throw e;
                              }
                              §§goto(addr230);
                           }
                           continue loop3;
                        }
                        continue loop1;
                        addr30:
                        if(!(_loc3_ || _loc1_))
                        {
                           continue;
                        }
                        §§push(null);
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           addr43:
                           §§pop().§§slot[4] = §§pop();
                           if(_loc4_ && _loc3_)
                           {
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr30);
                                 }
                                 §§goto(addr74);
                                 §§goto(addr43);
                              }
                              continue;
                              addr64:
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr70);
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
         if(_loc6_ || _loc2_)
         {
            this.§1Q§ = true;
            while(true)
            {
               this.§!f§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[>§,false);
            }
            addr93:
         }
         loop1:
         while(true)
         {
            this.§!f§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[>§,false);
            while(true)
            {
               if(!_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!y§,false);
                     while(_loc6_)
                     {
                        this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§>" §,false);
                        if(_loc6_ || _loc2_)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr93);
                  }
                  continue;
                  addr56:
               }
               continue loop1;
            }
         }
      }
      
      private function §24§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§implements§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§8! § = new Dictionary();
               do
               {
                  if(!this.§implements§)
                  {
                     this.§4L§ = true;
                     loop2:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 continue loop2;
                              }
                              addr61:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§implements§.enableErrorChecking = this.§&!q§;
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(this.§implements§.driverInfo.indexOf("Software") >= 0)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             continue;
                                          }
                                          addr97:
                                          while(true)
                                          {
                                             break loop4;
                                          }
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              addr102:
                           }
                        }
                        §§goto(addr97);
                     }
                     continue;
                  }
                  §§goto(addr102);
               }
               while(!(_loc1_ || this));
               
               return;
            }
         }
         §§goto(addr61);
      }
      
      private function §2n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@e§);
            loop0:
            while(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§?!R§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              this.§?!R§ = new this.§@l§();
                              addr115:
                              while(true)
                              {
                              }
                              addr115:
                           }
                           §§goto(addr115);
                        }
                        while(true)
                        {
                           §§push(this.§?!R§);
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc1_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       throw new Error("Invalid root class: " + this.§@l§);
                                    }
                                    break loop0;
                                 }
                                 while(_loc1_ || _loc1_)
                                 {
                                    §§pop().addChild(this.§?!R§);
                                    if(!(_loc1_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    §§goto(addr115);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(this.§@e§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr28);
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr115);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         try
         {
            this.§implements§.configureBackBuffer(§`!4§.width,§`!4§.height,this.§;;§,false);
            if(!_loc2_)
            {
               §;L§ = false;
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(§0,§());
            loop0:
            for(; §§pop(); loop2:
            while(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(!this.§implements§)
                     {
                        if(this.§&v§)
                        {
                           loop4:
                           for(; !_loc3_; if(_loc3_ && _loc3_)
                           {
                              continue;
                           },if(!_loc3_)
                           {
                              if(false)
                              {
                              }
                              break loop3;
                           },while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          addr50:
                                          break loop3;
                                          addr101:
                                       }
                                       break loop0;
                                    }
                                    addr147:
                                    while(true)
                                    {
                                       this.mStage3D.x = §`!4§.x;
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              addr112:
                              return;
                           },addr78:,§§goto(addr50))
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 §;L§ = false;
                                 while(!_loc3_)
                                 {
                                    this.setCanvasSize(§`!4§.width,§`!4§.height);
                                    if(_loc4_ || _loc3_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(§;L§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr112);
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 addr117:
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    this.configureBackBuffer();
                                    §§goto(addr117);
                                 }
                                 else
                                 {
                                    §§goto(addr134);
                                 }
                                 while(true)
                                 {
                                    this.mStage3D.y = §`!4§.y;
                                    continue loop6;
                                 }
                              }
                              §§goto(addr112);
                           }
                           while(true)
                           {
                              this.setCanvasSize(§`!4§.width,§`!4§.height);
                              §§goto(addr78);
                           }
                        }
                        break;
                     }
                     §§goto(addr147);
                  }
               }
               §§push(getTimer() / 1000);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(§§pop() - this.§>q§);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  this.§>q§ = _loc1_;
                  loop12:
                  while(true)
                  {
                     §§push(this.§@e§);
                     loop13:
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        addr331:
                        §§push(this.§@e§);
                        if(_loc3_ && _loc1_)
                        {
                           continue;
                        }
                        §§pop().render(this.§[!s§,1);
                        loop23:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr308:
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(this.§[!s§);
                                 loop24:
                                 while(_loc4_ || _loc3_)
                                 {
                                    §§pop().§6E§();
                                    loop25:
                                    while(true)
                                    {
                                       if(this.§%!C§ != null)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                this.§%!C§();
                                                continue;
                                             }
                                             continue loop23;
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§[!s§);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr226:
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§pop().finishRendering(this.§implements§);
                                                continue;
                                             }
                                             continue loop24;
                                          }
                                          addr335:
                                          addr349:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§pop().clear(this.§implements§,this.§4t§,1);
                                                break loop25;
                                             }
                                             break;
                                             §§goto(addr226);
                                          }
                                          while(true)
                                          {
                                             §§pop().§;]§(this.§@e§.stageWidth,this.§@e§.stageHeight);
                                             loop18:
                                             while(true)
                                             {
                                                §§goto(addr335);
                                                §§push(this.§[!s§);
                                                addr324:
                                                while(true)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§goto(addr331);
                                                }
                                                continue loop13;
                                             }
                                          }
                                       }
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       continue loop12;
                                    }
                                    while(_loc4_)
                                    {
                                       §§push(this.§[!s§);
                                       break loop24;
                                    }
                                    while(!(_loc3_ && this))
                                    {
                                       this.§-y§.advanceTime(_loc2_);
                                       break loop23;
                                    }
                                    while(true)
                                    {
                                       this.§1!6§.advanceTime(_loc2_);
                                       §§goto(addr378);
                                    }
                                    addr378:
                                 }
                                 while(true)
                                 {
                                    §§pop().§3>§(this.§implements§,this.§?1§);
                                    §§goto(addr324);
                                    §§goto(addr278);
                                 }
                                 addr278:
                              }
                              break;
                           }
                           §§goto(addr324);
                        }
                        while(true)
                        {
                           §§goto(addr349);
                           §§goto(addr308);
                        }
                     }
                  }
               }
               §§goto(addr391);
            })
            {
               while(true)
               {
                  §§push(§;L§);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public function set §"]§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!C§ = param1;
         }
      }
      
      private function § !`§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_ || _loc2_)
         {
            this.§]g§.x = §`!4§.x;
            if(!(_loc4_ && this))
            {
               this.§]g§.y = §`!4§.y;
            }
         }
         var _loc1_:int = this.§]g§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]g§.parent;
         if(_loc5_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               addr241:
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
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§!f§.addChild(this.§]g§);
                                    }
                                    addr233:
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§[!s§);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc4_)
                                          {
                                             if(_loc4_ && this)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            addr168:
                                                            loop13:
                                                            for(; _loc5_ || _loc3_; §§goto(addr168))
                                                            {
                                                               §§push(this.§[!s§);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     §§push(Boolean(§§pop().canvas));
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr80:
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc5_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(this.§[!s§);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§pop().setCanvasSize(this.§0!e§,this.§ F§,§`!4§.width / this.§@e§.stageWidth,§`!4§.height / this.§@e§.stageHeight);
                                                                                       }
                                                                                       addr249:
                                                                                       _loc3_ = §§pop().canvas;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(this.§&v§.bitmapData != _loc3_)
                                                                                          {
                                                                                             addr306:
                                                                                             this.§&v§.bitmapData = _loc3_;
                                                                                             addr310:
                                                                                          }
                                                                                          addr283:
                                                                                          if(this.§!f§.getChildIndex(this.§]g§) > 0)
                                                                                          {
                                                                                             addr291:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                this.§!f§.removeChild(this.§]g§);
                                                                                                addr298:
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   this.§!f§.addChildAt(this.§]g§,0);
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr271:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr311);
                                                                                                      }
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr306);
                                                                                          }
                                                                                          addr311:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                    §§push(this.§[!s§);
                                                                                 }
                                                                                 §§goto(addr271);
                                                                                 §§goto(addr80);
                                                                              }
                                                                              while(_loc4_)
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(_loc2_));
                                                                                    addr180:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break loop15;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              this.§!f§.removeChild(this.§]g§);
                                                                              break;
                                                                              addr184:
                                                                              addr87:
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
                                                                              §§push(§§pop());
                                                                              addr215:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                    addr223:
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr214:
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           §§goto(addr184);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§pop();
                                                            if(!(_loc5_ || this))
                                                            {
                                                               break loop10;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   continue loop3;
                                                   addr157:
                                                }
                                                §§goto(addr87);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr157);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr246);
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
      
      private function §`$§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(!_loc5_)
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§@e§.stageWidth * 0.75;
                  }
                  addr110:
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  _loc2_.background = true;
                  loop8:
                  while(!_loc5_)
                  {
                     _loc2_.backgroundColor = 4456448;
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           addr67:
                           if(!(_loc4_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop8;
                     }
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr110);
                        }
                        else
                        {
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr166);
                  }
                  while(true)
                  {
                     _loc2_.autoSize = TextFieldAutoSize.CENTER;
                     §§goto(addr152);
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      public function §!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §5u§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=!w§ = true;
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
         if(!(_loc1_ && this))
         {
            this.§=!w§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_);
         
      }
      
      public function §7d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<B§ = param1;
         }
      }
      
      private function §';§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@r§ = true;
            loop0:
            while(this.§&v§ == null)
            {
               loop1:
               while(_loc2_)
               {
                  this.§&v§ = new Bitmap();
                  while(true)
                  {
                     this.§`!d§.addChild(this.§&v§);
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
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
         §§goto(addr71);
      }
      
      private function §>" §(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§';§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §%!y§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§1Q§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     return;
                  }
                  loop32:
                  while(true)
                  {
                     loop21:
                     while(true)
                     {
                        if(!this.§implements§)
                        {
                           this.§[!s§ = new §@!H§();
                           loop22:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop32;
                              }
                              §§push(this.§[!s§);
                              loop23:
                              while(!(_loc4_ && _loc2_))
                              {
                                 §§pop().setCanvasSize(this.§0!e§,this.§ F§,§`!4§.width / this.§@e§.stageWidth,§`!4§.height / this.§@e§.stageHeight);
                                 continue loop22;
                                 addr192:
                                 §§push(this.§[!s§);
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§pop().clear(null,this.§4t§);
                                    loop25:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                this.§-y§.§>B§ = this.§6q§;
                                                for(; !_loc4_; dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE)),if(!(_loc4_ && _loc3_))
                                                {
                                                   continue loop25;
                                                })
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(this.§implements§));
                                                      loop8:
                                                      while(true)
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr358:
                                                               this.§`$§("Fatal error: The application lost the device context!");
                                                               this.stop();
                                                               addr361:
                                                            }
                                                            else
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  this.§!P§();
                                                                  loop11:
                                                                  while(!(_loc4_ && _loc2_))
                                                                  {
                                                                     this.§24§();
                                                                     while(true)
                                                                     {
                                                                        this.§2n§();
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(this.§implements§));
                                                                           loop14:
                                                                           while(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop15:
                                                                                    for(; !_loc4_; if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       continue loop14;
                                                                                    })
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr301:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ && _loc2_)
                                                                                             {
                                                                                                return;
                                                                                                addr351:
                                                                                             }
                                                                                             §§push(this.§4L§);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr369:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop31;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr368:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr276:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mStage3DEnabled = false;
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§implements§ = null;
                                                                                          addr233:
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§';§();
                                                                                                continue loop32;
                                                                                             }
                                                                                             addr207:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ && param1)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.§[!s§ = new §@>§();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break loop25;
                                                                                                      }
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   addr336:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                   addr222:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§[!s§);
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   addr383:
                                                                                                }
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr369);
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr370);
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr168:
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§goto(addr192);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr358);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr379:
                                                                  while(true)
                                                                  {
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        §§push(§<!?§.§&"#§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr368);
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr351);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop22;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr207);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr222);
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          return;
                                          addr104:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§[!s§);
                                          addr378:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             §§goto(addr379);
                                          }
                                       }
                                       addr376:
                                    }
                                    §§goto(addr336);
                                    §§push(_loc5_ || _loc2_);
                                 }
                                 §§goto(addr378);
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr376);
                                 }
                                 §§goto(addr362);
                                 §§goto(addr135);
                              }
                              addr135:
                           }
                           continue loop32;
                        }
                        §§goto(addr207);
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§ k§)).§ k§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.§ k§ = _loc3_;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     this.§?1§ = § k§;
                     §§goto(addr383);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr300);
         }
         §§goto(addr244);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§!P§();
         }
         §§push(getTimer() / 1000);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() - this.§>q§);
            if(!(_loc4_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§=!w§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr121:
                           while(true)
                           {
                              this.render();
                              addr123:
                              while(true)
                              {
                              }
                           }
                           addr121:
                        }
                        while(this.§]g§)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc3_ > 1);
                                       if(_loc5_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr131:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 this.§ !`§();
                                 addr83:
                                 if(_loc5_ || this)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr121);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr83);
                        }
                        return;
                     }
                     continue;
                     addr119:
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr121);
      }
      
      private function §[>§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!P§();
         }
         do
         {
            this.§@e§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_);
         
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop() / this.§`w§);
            if(_loc5_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() / this.§-K§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            if(§8!`§)
            {
               §§push(this.§@e§);
               while(true)
               {
                  §§push(this.§`w§);
                  loop1:
                  while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        §§pop().stageWidth = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§push(this.§@e§);
                              loop3:
                              while(true)
                              {
                                 §§push(this.§-K§);
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_)
                                          {
                                             addr151:
                                             §§push(_loc3_);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() / §§pop());
                                             }
                                             else
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop().stageWidth = §§pop();
                                                      addr229:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.§@e§);
                                                         addr201:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§-K§);
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§pop().stageHeight = §§pop();
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        addr89:
                                                                        while(true)
                                                                        {
                                                                           this.§0!e§ = param1;
                                                                           addr93:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    this.§ F§ = param2;
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     addr215:
                                                                  }
                                                               }
                                                               addr205:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§`w§);
                                                                  addr222:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                               addr220:
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§pop().stageHeight = §§pop();
                                          continue loop2;
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr151);
                              }
                              continue loop1;
                           }
                           §§goto(addr229);
                        }
                     }
                     §§goto(addr222);
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     §§pop().dispatchEvent(new §4!G§(flash.events.Event.RESIZE,param1,param2));
                     if(_loc5_)
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr93);
                        }
                        return;
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr201);
               }
            }
            §§goto(addr218);
         }
         §§goto(addr215);
      }
      
      public function §while§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setCanvasSize(this.§`w§,this.§-K§);
         }
      }
      
      private function §3!6§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!(_loc9_ && param1))
         {
            §§push(this.§=!w§);
            if(_loc10_ || param1)
            {
               §§push(!§§pop());
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        §§goto(addr60);
                     }
                     §§push(!§§pop());
                     if(!_loc10_)
                     {
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr80);
               }
               addr60:
               §§pop();
               if(!(_loc9_ && _loc2_))
               {
                  §§push(this.§<B§);
                  if(_loc9_ && _loc3_)
                  {
                  }
                  addr80:
                  if(§§pop())
                  {
                     if(_loc10_ || _loc2_)
                     {
                        §§goto(addr88);
                     }
                  }
                  else
                  {
                     addr94:
                     if(param1 is MouseEvent)
                     {
                        addr95:
                        §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                        if(!(_loc9_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(!(_loc9_ && _loc2_))
                           {
                              addr174:
                              _loc3_ = Number(_loc6_.stageY);
                              loop5:
                              while(true)
                              {
                                 _loc4_ = 0;
                                 loop4:
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(param1.type != MouseEvent.MOUSE_DOWN)
                                       {
                                          if(param1.type == MouseEvent.MOUSE_UP)
                                          {
                                             if(_loc10_ || param1)
                                             {
                                                addr134:
                                                if(_loc9_ && _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   this.§9!z§ = false;
                                                   §§goto(addr134);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc10_ || _loc2_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                addr164:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       if(_loc10_)
                                       {
                                          this.§9!z§ = true;
                                       }
                                       §§goto(addr164);
                                    }
                                    addr205:
                                    var _loc8_:* = param1.type;
                                    if(_loc10_)
                                    {
                                       if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(0);
                                             if(_loc9_)
                                             {
                                                addr443:
                                             }
                                          }
                                          else
                                          {
                                             addr425:
                                             §§push(3);
                                             if(_loc9_)
                                             {
                                                addr456:
                                             }
                                          }
                                       }
                                       else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(1);
                                             if(_loc9_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr415:
                                             §§push(2);
                                             if(!_loc10_)
                                             {
                                                §§goto(addr443);
                                             }
                                          }
                                       }
                                       else if(TouchEvent.TOUCH_END === _loc8_)
                                       {
                                          if(_loc10_)
                                          {
                                             §§goto(addr415);
                                          }
                                          else
                                          {
                                             addr440:
                                             §§push(4);
                                             if(_loc9_)
                                             {
                                                §§goto(addr456);
                                             }
                                             addr461:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(§<A§.§"![§);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §`!4§.right);
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop10:
                                                                        while(_loc10_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc10_ || this))
                                                                                                      {
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         addr554:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §`!4§.bottom);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   }
                                                                                                }
                                                                                                addr625:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop17;
                                                                                                }
                                                                                                addr661:
                                                                                             }
                                                                                          }
                                                                                          while(!(_loc9_ && this))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§goto(addr548);
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                              addr608:
                                                                           }
                                                                           §§goto(addr661);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop6;
                                                                  }
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop();
                                                                     addr588:
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ && _loc3_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           addr543:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §<A§.§"![§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break loop21;
                                                                                 }
                                                                                 addr671:
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!(_loc10_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() - §`!4§.x);
                                                                                    }
                                                                                    loop23:
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop24:
                                                                                       while(_loc10_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!(_loc10_ || param1))
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                §§push(§§pop() - §`!4§.y);
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   if(!(_loc10_ || param1))
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr516);
                                                                                                continue loop24;
                                                                                             }
                                                                                             addr516:
                                                                                             _loc3_ = §§pop();
                                                                                             while(_loc10_)
                                                                                             {
                                                                                                this.§-y§.§^!]§(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr554);
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §`!4§.left);
                                                                                    addr674:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop10;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr674);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr379:
                                                         _loc5_ = §§pop();
                                                         addr378:
                                                         break;
                                                         addr378:
                                                         addr380:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr301:
                                                      _loc5_ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr304:
                                                         if(false)
                                                         {
                                                            addr306:
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr551);
                                                case 1:
                                                   §§goto(addr378);
                                                case 2:
                                                   addr356:
                                                   §§push(§<A§.§0!;§);
                                                   §§push(§<A§.§2!R§);
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc10_ || this)
                                                      {
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr595);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr378);
                                                   }
                                                case 3:
                                                   addr341:
                                                   _loc5_ = §<A§.§"![§;
                                                   addr342:
                                                   §§goto(addr306);
                                                   addr340:
                                                case 4:
                                                   §§push(§<A§.§2!R§);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      addr319:
                                                      _loc5_ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr633);
                                                   }
                                                   §§goto(addr543);
                                                case 5:
                                                   §§push(this.§9!z§);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§<A§.§0!;§);
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     addr257:
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        addr279:
                                                                        §§push(§§pop());
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           addr287:
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§goto(addr301);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr356);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr633);
                                                                        }
                                                                        §§goto(addr543);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      else
                                                      {
                                                         §§push(§<A§.§0!U§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr279);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr341);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr625);
                                             }
                                             §§goto(addr671);
                                             §§push(_loc2_);
                                          }
                                          §§goto(addr443);
                                       }
                                       else
                                       {
                                          if(MouseEvent.MOUSE_DOWN === _loc8_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§goto(addr425);
                                             }
                                             §§goto(addr461);
                                          }
                                          else
                                          {
                                             if(MouseEvent.MOUSE_UP === _loc8_)
                                             {
                                                if(_loc10_ || _loc2_)
                                                {
                                                }
                                             }
                                             else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                             {
                                                §§goto(addr440);
                                                §§push(6);
                                             }
                                             §§goto(addr440);
                                          }
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§goto(addr456);
                                          }
                                       }
                                       §§goto(addr440);
                                    }
                                    §§goto(addr425);
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr174);
                     }
                     else
                     {
                        §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                        if(_loc10_)
                        {
                           _loc2_ = §§pop();
                           if(_loc10_)
                           {
                              §§push(Number(_loc7_.stageY));
                           }
                           §§goto(addr205);
                        }
                        _loc3_ = §§pop();
                        if(!(_loc9_ && this))
                        {
                           _loc4_ = _loc7_.touchPointID;
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr95);
               }
               §§goto(addr88);
            }
            §§goto(addr94);
         }
         addr88:
      }
      
      private function get §2;§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §2!a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_)
         {
            if(param1 in this.§8! §)
            {
               if(!_loc6_)
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr58:
               (_loc4_ = this.§implements§.createProgram()).upload(param2,param3);
               if(!_loc6_)
               {
                  this.§8! §[param1] = _loc4_;
               }
            }
            else if(this.§implements§ != null)
            {
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function § +§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§"u§(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§8! §[param1];
                  }
                  while(_loc3_);
                  
                  addr74:
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §"u§(param1:String) : Program3D
      {
         return this.§8! §[param1] as Program3D;
      }
      
      public function §3h§(param1:String) : Boolean
      {
         return param1 in this.§8! §;
      }
      
      public function get §!x§() : Boolean
      {
         return this.§=!w§;
      }
      
      public function get §#T§() : §[D§
      {
         return this.§1!6§;
      }
      
      public function get §>B§() : Boolean
      {
         return this.§6q§;
      }
      
      public function set §>B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6q§ = param1;
            while(this.§implements§)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               addr70:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               addr66:
               this.§-y§.§>B§ = param1;
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!q§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!q§ = param1;
         }
         while(this.§implements§)
         {
            if(_loc3_ || _loc2_)
            {
               this.§implements§.enableErrorChecking = param1;
            }
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function get §^!^§() : int
      {
         return this.§;;§;
      }
      
      public function set §^!^§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;;§ = param1;
            do
            {
               §'!X§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §`!d§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(!_loc3_)
         {
            if(this.§]g§ == null)
            {
               if(_loc2_)
               {
                  addr37:
                  this.§]g§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!_loc3_)
               {
                  _loc1_.hideBuiltInItems();
               }
               while(true)
               {
                  while(true)
                  {
                     this.§]g§.contextMenu = _loc1_;
                     do
                     {
                        this.§ !`§();
                     }
                     while(_loc3_);
                     
                     if(_loc3_ && _loc1_)
                     {
                        break;
                     }
                     if(true)
                     {
                        return this.§]g§;
                     }
                     addr81:
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr37);
      }
      
      public function get stage() : §`g§.Stage
      {
         return this.§@e§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §6p§() : flash.display.Stage
      {
         return this.§!f§;
      }
      
      public function get §[&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@r§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
